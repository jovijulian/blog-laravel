-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 06:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jovi_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(2, 'Personal', 'personal', '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(3, 'Web Design', 'web-design', '2021-09-13 23:27:11', '2021-09-13 23:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_25_065748_create_posts_table', 1),
(5, '2021_08_27_062423_create_categories_table', 1),
(6, '2021_10_05_022519_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Voluptatum eum asperiores eius distinctio.', 'quisquam-reiciendis-omnis-in-ea-sit-laboriosam', NULL, 'Qui quisquam fugit eos laboriosam nulla voluptas. Ut labore laudantium assumenda totam eos est aut. Rerum porro adipisci nostrum inventore et et quibusdam vitae. Quia nam rerum et enim dolores nesciunt commodi blanditiis.', '<p>Vel aliquam fugit voluptatem quia hic voluptates. Enim nulla ipsa iure autem autem. Ut sit facere aperiam sunt natus maxime placeat.</p><p>Consequuntur distinctio illo sit est. Iste quis provident aliquam molestiae magni. Ut consectetur est perferendis ut distinctio similique. Totam natus consequuntur consequuntur aut doloribus. Impedit quidem temporibus expedita.</p><p>Alias rerum aut tempore voluptates aut dolore. Vel id esse distinctio sunt. Ipsam dolore hic delectus architecto et temporibus nam. Voluptas atque error voluptatibus ad earum.</p><p>Nisi id architecto deleniti. Eius in consequatur velit assumenda rem. Aut deserunt ducimus quidem dolor unde dicta. Nisi cum soluta hic labore.</p><p>Necessitatibus incidunt sint eveniet praesentium et aut. Deleniti aperiam consequatur aperiam fuga nobis sed tempore est. Totam rerum neque quibusdam porro voluptas voluptatibus in quis. Quia rerum quae voluptatibus corrupti maxime.</p><p>Vel sequi voluptatem nulla odio. Consequuntur qui consequatur quas repudiandae blanditiis labore consectetur qui. Numquam ut et nobis dolor.</p><p>Qui temporibus earum ratione est et est. Excepturi vel non earum et earum maxime. Eligendi assumenda laborum et qui autem vitae pariatur velit. Quae aut aperiam amet itaque aperiam.</p><p>Exercitationem hic eum et est ratione. Maiores omnis facere sint repellat vel nesciunt. Quae dolor aliquam et rerum odit et.</p><p>Tempora porro incidunt aut ab. Magnam repudiandae et odit. Consequatur est est similique sunt dolores adipisci. Delectus sunt ipsum nisi error amet magni eveniet.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(2, 1, 2, 'Quibusdam quo.', 'est-earum-harum-qui-rerum', NULL, 'Eligendi soluta ducimus sapiente aut inventore aspernatur. Consequatur sed est est ratione distinctio. At corporis aliquid corporis perferendis architecto. Nostrum vel facilis commodi qui.', '<p>Hic dolorem occaecati et nesciunt et. Quia inventore quisquam repudiandae nostrum. Rerum omnis occaecati provident. Sed qui doloribus consectetur cum atque quaerat.</p><p>Natus voluptatem non rem ut voluptatibus sit delectus. Quibusdam iste sint aut ut et soluta. Asperiores dolor vel rem deserunt vitae consequatur.</p><p>Alias commodi blanditiis error. Asperiores et cumque dolorum sunt incidunt. Qui magnam voluptate laudantium quidem qui optio et.</p><p>Minima et corrupti quis non saepe. Voluptas ut incidunt aut nihil quia voluptas quibusdam. Consectetur et doloribus quisquam repellat hic doloremque voluptate sint.</p><p>Ullam unde voluptas fugiat aut. Quam maiores eum consequatur eos.</p><p>Quisquam nobis maxime consectetur explicabo natus dicta consequuntur. Ea iste veniam ratione aspernatur. At ut odio voluptatibus temporibus qui et eaque. Modi officiis alias ut eveniet.</p><p>Fuga ipsam et voluptas quia. Sunt dignissimos qui ab possimus perspiciatis sapiente.</p><p>Saepe cum sit enim cum aut labore sed. Incidunt labore maiores accusamus laboriosam sed et esse. Beatae provident qui nisi similique error doloremque et.</p><p>Accusamus laborum vel iure mollitia. Nobis repellat cumque rerum animi quibusdam occaecati iure. Facilis eos expedita corrupti iure. Et velit et expedita cum.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(3, 2, 1, 'Quo ullam velit.', 'ipsam-rerum-ut-officia-ut', NULL, 'Ab tenetur asperiores placeat nam dolorem aliquam atque. Alias accusantium non explicabo ratione consequatur dolor rerum voluptate. Ex minima iusto est amet omnis iure omnis. Cumque ipsum qui nisi aut.', '<p>Labore aut quo vero fugiat aut eaque. Autem neque sapiente sed aut ratione. Iure quibusdam sint consequuntur accusantium iusto.</p><p>Voluptas dolorem debitis illo voluptatibus. Sit non exercitationem labore quisquam consequuntur assumenda. Optio corrupti porro ducimus facilis. Minus earum at ratione cupiditate unde labore non porro.</p><p>Amet cum corrupti non exercitationem minima eum officiis. Molestias voluptatem quia iure aut fugiat esse et. Et ut velit ullam accusamus est voluptas. Vitae illum et libero at.</p><p>Ab aut ipsam aut delectus molestiae. Sint odio repellat facilis magni labore consequatur iste. Error est qui ipsam hic molestiae rerum. Repudiandae dolorem quasi sapiente vel voluptatem consequuntur.</p><p>Id eveniet iusto nesciunt sapiente doloribus sed blanditiis nemo. Numquam sit et repellendus distinctio et aliquam ut officiis. Ea aperiam at accusantium perferendis nemo.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(4, 1, 3, 'Molestiae qui qui.', 'quidem-sint-et-sint-ratione-et-possimus', NULL, 'Voluptatem et qui expedita labore molestias. Pariatur quo temporibus sunt vitae aperiam aliquam quasi sit. Voluptatem dolorem molestiae est veniam. Sapiente earum unde eveniet ex et esse. Nam voluptatem nihil facere quia.', '<p>Ipsum ipsa quia eveniet fuga aliquid omnis enim. Enim voluptatem suscipit temporibus. Doloribus error laboriosam dignissimos ea perspiciatis est.</p><p>Voluptates at ut doloremque sit. Explicabo est incidunt est. Animi modi quia quod rem consequatur enim provident. Placeat natus aut exercitationem qui ea quo omnis.</p><p>Necessitatibus veniam recusandae nostrum et et libero. Amet vitae ipsa modi vel. Quos sunt et officia id ut. Deleniti corrupti fuga voluptatibus rerum.</p><p>Consequatur aperiam et aut omnis neque illo facere doloremque. Eos reiciendis non ratione error consectetur. Voluptatum unde enim incidunt ab accusantium. Aliquam cumque reprehenderit consequatur amet.</p><p>Expedita aspernatur autem maxime. Voluptatem quo consequatur autem fuga repellat vitae quia. Qui enim deleniti sit tenetur magnam amet deserunt. Ut cumque mollitia asperiores laborum.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(5, 1, 2, 'Qui fugiat ut ut.', 'doloribus-omnis-nihil-iure-vitae-et-et-deserunt', NULL, 'Repudiandae possimus inventore autem. Quia repellendus magni voluptas. Unde ab molestiae quas voluptatem sed repellat. Dolorem ut soluta libero mollitia magnam asperiores.', '<p>A molestias minima tempora minima qui nostrum doloribus dolorem. Est voluptas non omnis. Cumque et consectetur asperiores ea officiis iusto.</p><p>Optio et commodi enim enim quas corrupti ea ut. Illum voluptas et vitae id. Exercitationem quia aperiam neque similique quam.</p><p>Veritatis facilis libero voluptatem. Voluptatem est est quo reiciendis et voluptas. Explicabo error placeat soluta ut. Ut corporis repudiandae doloremque asperiores.</p><p>Amet et hic ipsam ipsum soluta quis expedita voluptatem. Minima consequatur officia aut voluptatem consequatur. Sit est deleniti deleniti consequuntur vero.</p><p>Est ducimus saepe eum excepturi et. Nulla aliquam qui ex beatae consequatur ut quam. Adipisci ea corrupti perspiciatis quia.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(6, 2, 1, 'Corrupti velit ut velit temporibus officia ut.', 'eius-sunt-quo-qui-at-sequi-ut-et', NULL, 'Dolorem quis ea alias delectus. Amet enim suscipit voluptas non natus. Nihil qui et sint a earum.', '<p>Veritatis qui ab porro doloremque. Illo sunt voluptate et ratione numquam. Similique necessitatibus earum in dignissimos itaque et. Voluptas ullam est architecto nesciunt reprehenderit et maxime.</p><p>Qui porro maxime et deleniti dolor harum. Beatae quia quis sit rerum autem voluptatem nesciunt. Molestiae quisquam natus aliquam rerum ipsa eos ut.</p><p>Accusantium corporis occaecati animi et culpa est. Numquam fuga ex aperiam eveniet quo et ex. Quisquam tempore nemo praesentium qui aliquid. Asperiores omnis vel est est nam tempore voluptatum.</p><p>Ut ipsum quo voluptates magnam iste qui. Autem est aut et dolores unde. Dolorem doloremque cupiditate nihil eos.</p><p>Autem aut id necessitatibus veritatis voluptate totam. Dolore praesentium blanditiis laboriosam.</p><p>Nemo eum omnis rerum odit labore. Consequuntur voluptatem numquam aut perferendis. Dolore laudantium occaecati nostrum asperiores omnis accusantium nisi.</p><p>Assumenda harum sit eos expedita. Iusto reiciendis quo adipisci aut nisi sed. Nisi id modi magni pariatur et quia.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(7, 1, 2, 'Maiores sint eum voluptatibus.', 'perspiciatis-accusantium-et-et-quasi-officia', NULL, 'Sunt sint quia repudiandae quia quo. Voluptas sed nobis aliquam. Ratione asperiores numquam tenetur quasi sequi eos ex qui. Id ratione pariatur sunt voluptas officia.', '<p>Fugit deserunt a delectus blanditiis doloremque nihil. Perferendis aut sed dolore repellat saepe laboriosam.</p><p>Ut omnis esse nulla repellendus et nostrum dolorem. Animi nisi recusandae et aut reprehenderit voluptas harum. Qui nobis distinctio similique sequi.</p><p>Dolor cumque assumenda molestias accusamus eos. Iste nobis id rerum doloribus et reprehenderit enim. Ut ratione id et ipsam adipisci.</p><p>Ut asperiores atque ab ipsum aut doloremque harum rerum. Eaque dignissimos sit et. Sed accusamus sapiente autem aut facilis. Voluptatem et inventore quia.</p><p>Repellendus est quis enim excepturi rem. Est quaerat facilis dolor provident. Nemo sequi aspernatur voluptate tempore dicta.</p><p>Nemo est molestiae necessitatibus dolores et dolorem ut. Voluptatem quia voluptas laborum qui. Enim est quia soluta laborum excepturi. Suscipit sit veritatis sed perspiciatis culpa excepturi saepe voluptatem. Voluptatem voluptatem sed voluptatum.</p><p>Id dolorem molestiae incidunt odio eaque nihil praesentium ex. Voluptas quasi dolores ipsam laborum. Facere omnis qui recusandae vel et corrupti quasi.</p><p>Voluptate voluptas minus voluptatem eius at distinctio ea odio. Est itaque magni facere. Quia dolor voluptates nesciunt aperiam ab in minima.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(8, 1, 1, 'Saepe ipsum sint occaecati eos velit.', 'expedita-quae-rerum-error-expedita-non-molestiae-itaque', NULL, 'Aut ab sit tempore laborum. Et incidunt hic debitis et illo earum nemo. Voluptatem numquam aspernatur repellendus blanditiis voluptatem aut.', '<p>Accusantium perferendis repudiandae enim commodi distinctio vel. Distinctio tempora officia quas quia officiis qui soluta. Aliquid doloremque architecto omnis quo maiores.</p><p>Voluptas dolor at libero occaecati culpa. Repellendus aut sint voluptatibus voluptatem ad. Facilis et similique autem voluptas et laborum.</p><p>Non eum dolorum voluptas iusto et. Occaecati et et dolores cupiditate.</p><p>Et et maiores maiores. Beatae ipsum quia sed rem et. Minus quod corrupti in quia dicta voluptas iusto tenetur.</p><p>Quia officiis nulla veniam iste. Autem nam odio sint harum alias blanditiis earum fuga. Neque aspernatur facere quis et eveniet quasi. Quia inventore ut quibusdam voluptates labore atque consequatur et. Odit et quo consequuntur a voluptatem corrupti et.</p><p>Minima ea culpa sint. Suscipit in aspernatur rerum vitae impedit. Blanditiis asperiores perferendis quis. Harum voluptatem pariatur voluptates.</p><p>Ut et et delectus blanditiis necessitatibus incidunt. Voluptates ea doloremque velit qui voluptates quo minus. Voluptatem quae asperiores enim.</p><p>In ullam aut et voluptas ab ut possimus. Est sint beatae nihil quod dignissimos quia. Saepe quo beatae modi voluptas ad eum quis voluptate.</p><p>Et quis placeat quos animi ex et. Ad enim velit doloremque dolore. Eius voluptatem ullam eligendi et. Et nostrum esse dolor voluptas quod enim aut. Et quod praesentium pariatur ea ipsum eos temporibus.</p><p>Quae aut aperiam nulla labore ipsam est id. Autem soluta impedit et suscipit. Et esse ad ad in laudantium.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(9, 2, 1, 'Vel minus omnis voluptas doloremque repellat aut perferendis.', 'labore-ut-quos-temporibus-quae-assumenda-tenetur', NULL, 'Nesciunt consequatur quod est. At nulla fuga magni qui.', '<p>Natus quia ut necessitatibus quam dolor ut. Temporibus assumenda consectetur harum aut consectetur beatae et pariatur. Reprehenderit non officiis eos rerum suscipit ea. Excepturi ut dolores aliquid id voluptatem facilis.</p><p>Alias ut qui cum recusandae et illo similique. Magni quidem fuga tempore velit reiciendis molestiae. Iusto aliquid alias iusto ea.</p><p>Qui placeat rem quidem natus. Ut dolores sed omnis magni eveniet est. Porro exercitationem non sunt labore ratione ab. Tenetur perferendis eos qui eligendi.</p><p>Vitae eum ut reprehenderit consequuntur asperiores rerum perferendis. Commodi facere ut est. Quia delectus quia dolorem aut.</p><p>Minus voluptatibus vero autem facere aut ipsum. Quo ad soluta harum magnam qui in et. Id sint doloremque omnis eveniet officiis eum. Corporis pariatur eum laboriosam.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(10, 2, 1, 'Sapiente quis rerum eos qui qui dolorem quia aspernatur dolor.', 'et-vel-autem-id-quia-illum', NULL, 'Nisi temporibus nisi laborum. Eaque reiciendis voluptas odio voluptatibus laboriosam perferendis qui. Eligendi unde sed voluptatem quia.', '<p>Libero praesentium nemo autem reprehenderit et consequatur. Itaque quia nulla cumque quidem sed. Unde quis qui rerum et aliquid. Soluta veritatis qui aut.</p><p>Rerum voluptas sit illo ad et. Voluptate iste neque quam aperiam deserunt harum. Est omnis hic assumenda nihil et eos distinctio. Sed suscipit debitis corporis dolores sit ipsa eius.</p><p>Quos sapiente odio commodi magni nulla. Atque et quis voluptatum inventore ut perspiciatis ducimus. Enim non fugit sunt tempore consequuntur sequi expedita. Earum qui voluptatibus odit beatae praesentium. Blanditiis sit tempora minus aliquid libero omnis odio at.</p><p>Deleniti eum unde ea itaque deleniti dolor dolorem. Dolores qui in et. Consectetur sed provident aliquam sed quisquam quibusdam eveniet iure. Suscipit blanditiis voluptas deleniti consequatur eaque reiciendis soluta.</p><p>Vel deserunt et aperiam adipisci ut dolor. Laborum eaque commodi et earum in. Porro voluptas velit repellendus ea minima.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(11, 2, 3, 'Porro laudantium sint reiciendis.', 'in-laborum-ipsa-unde-laboriosam-nisi-neque', NULL, 'Aut dolor dolorem repellendus aut voluptatem at aut autem. Inventore deleniti et natus possimus sed et. Qui nihil ad nobis placeat voluptatem ad minima quo. Odio natus non totam.', '<p>Facere consequuntur quae nostrum repellendus laudantium. At ut aut consequuntur adipisci aut ea necessitatibus rerum. Quia voluptates dolores dicta doloribus rem eum quis.</p><p>Veniam sequi enim tempore velit non est. Natus nihil distinctio temporibus perspiciatis. Quam deserunt odio reiciendis quam reiciendis. Voluptas aliquid voluptas nulla ut dolores voluptas numquam. Natus voluptates occaecati cum esse dolorem.</p><p>Autem odio distinctio voluptas sint quod. Ut cum ut accusantium vel. Itaque magnam quis sequi sed eos aperiam.</p><p>Omnis neque qui est dolorem soluta. Officiis cupiditate suscipit rerum ipsa aliquid. Neque molestias eum quibusdam necessitatibus quo ut voluptate.</p><p>Recusandae numquam veritatis assumenda qui. Perferendis et quibusdam alias aperiam deserunt impedit. Doloribus omnis incidunt ea repudiandae quas quis tempora quam. Quaerat nisi iusto voluptatum libero est.</p><p>Dicta necessitatibus perferendis necessitatibus sit rerum. Ad voluptates aut voluptatibus quod dolor dolore. Dolore in quasi necessitatibus at.</p><p>Sed voluptatem velit quia expedita officia iure. Adipisci dicta voluptatem quaerat hic fugit quae. Doloribus exercitationem nobis illo reprehenderit itaque ducimus iure.</p><p>Incidunt delectus provident aspernatur sunt aut. Et ullam quod neque et magnam error dolores. Voluptas provident quis iure a. Rerum ratione et in. Sit voluptas necessitatibus perferendis.</p><p>Quia in adipisci delectus impedit. Minima eligendi voluptatum accusantium natus. Perspiciatis officiis eos deleniti nihil numquam dolores.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(12, 1, 1, 'Dolores blanditiis esse voluptatibus voluptate natus et odit quos maxime.', 'dolore-beatae-quisquam-hic-est-nisi', NULL, 'Voluptates quae vero deleniti non distinctio. Consectetur odit ea neque nisi et. Sed molestias nobis incidunt harum repellat exercitationem placeat.', '<p>Nobis delectus quia deserunt sed. Illo id dolor tempora ipsam cum. Ad qui ipsum voluptatem quos velit qui.</p><p>Velit officiis soluta vitae vel quia et. Nihil qui ab aut quis repellat sunt. Possimus explicabo sed voluptatem rem aut.</p><p>Dolor est quibusdam voluptate quis. Et et consequuntur quia expedita dicta voluptatem. Eaque praesentium illo laudantium itaque ratione. Adipisci distinctio corporis quis et facere itaque est.</p><p>Molestiae ad suscipit et repellat cum est ut. In ut velit officia. Necessitatibus in sit doloremque odio asperiores necessitatibus molestiae modi. Nesciunt dolorum ut ipsam saepe.</p><p>Quod et molestiae voluptas ut. Nihil cum reprehenderit nam quidem velit omnis est numquam. Sunt rerum rerum quas in perspiciatis dolores voluptate. Id vero ad aut nesciunt.</p><p>Voluptates minus et voluptatem repudiandae dicta. Esse deserunt nulla non non et quo. Dolore aperiam cupiditate facere quibusdam qui fuga vero.</p><p>Est rerum voluptas minus. Possimus ut ex eveniet debitis facere dolores explicabo. Iusto sint ea ut aliquid.</p><p>Magni similique impedit accusantium eos. Non dolores sit ratione aperiam eum magnam. Est a est at optio delectus. Saepe rerum quas expedita hic reiciendis accusamus repellat.</p><p>Rerum nobis nemo laboriosam et et vel nobis quis. Dolorum esse totam ut harum fugiat in. Deleniti provident autem omnis harum quas similique. Itaque fugiat ducimus est at consequatur et quia nemo.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(13, 1, 3, 'Debitis eos sed.', 'atque-similique-velit-sunt-maxime-corrupti-rerum-et', NULL, 'Optio dolor nisi quae quas. Non nulla sed quae vitae. Iste repellat qui est aut. Sit hic qui dolor magnam pariatur rerum accusamus.', '<p>Labore unde iste impedit asperiores. Reiciendis suscipit eum eos aut distinctio non. Et soluta cumque sed sit sapiente ea dolores.</p><p>Pariatur sapiente ab autem consequatur. Dolore architecto a iure quia. Repellendus assumenda voluptatem qui at. Earum tempora quia soluta possimus atque quia est. Doloremque occaecati et velit ut quisquam aspernatur aut.</p><p>Perspiciatis beatae et error animi. Libero et vero impedit hic. Soluta tempora vel veniam nemo aut. At pariatur id perferendis consectetur reprehenderit. Cupiditate ratione quasi esse voluptatibus neque placeat.</p><p>Molestias enim labore dolores exercitationem deleniti. Quas dolorem sint dolorem accusantium quae. Quia quia voluptatum similique est magni.</p><p>Et aut molestiae ut aut magnam sint magni. Aut sunt iusto harum iusto laudantium. Sequi voluptas neque unde id repellendus id delectus. Mollitia distinctio qui molestiae minima.</p><p>Voluptate consequuntur autem sit accusamus dolor atque ipsa quod. Vero totam enim sequi et est at sunt fugit.</p><p>Facilis consequuntur et est nulla unde nesciunt sunt. Dolores et labore consequatur aliquam. Consequatur facilis harum impedit vel perspiciatis. Culpa id dolores id dolorem blanditiis eligendi rem.</p><p>Fugit aut eligendi voluptatem voluptatum aut saepe sed. Possimus excepturi est provident vel totam doloremque atque.</p><p>Facere reiciendis eaque possimus vero magnam voluptatum eligendi earum. Nobis voluptas aliquid in est voluptas. Impedit incidunt asperiores vel ipsam accusantium temporibus dolorum. Facilis possimus voluptatibus dolores aliquid maxime praesentium autem.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(14, 1, 3, 'Quidem minus dolorum quidem nemo alias.', 'repellat-earum-temporibus-consequatur-ad', NULL, 'Eligendi quis consequatur eum repellendus dolorem voluptatem doloremque. Ducimus laudantium sint optio qui dolores temporibus autem enim. A odio quis et rerum voluptas est quis. Laudantium nihil consectetur assumenda aperiam amet ipsa.', '<p>Autem quis autem quo officiis. Libero rerum perferendis consequuntur voluptatem. Autem cumque natus qui iusto. Debitis et voluptatum dolor et delectus rerum.</p><p>Sit autem occaecati consectetur eaque et alias. Unde officia soluta vero voluptas. Illo voluptas sunt qui at. Officiis quo suscipit molestiae ducimus ut culpa perferendis.</p><p>Eaque non consectetur pariatur veritatis. Quia sit alias nemo nulla expedita expedita quisquam excepturi. Itaque nihil sit modi suscipit ratione. Tempora libero voluptatem iure deserunt. Natus eum illum voluptas assumenda quos nobis suscipit.</p><p>Deserunt dolores qui soluta ut harum aliquam aut. Veniam voluptas assumenda facilis voluptatem. Omnis animi non voluptatem ducimus dolore. Non aut aut ex.</p><p>Eos ut delectus id eius eum odio blanditiis. Quasi ab mollitia aut eum doloribus magnam tempore vitae. Quibusdam consectetur enim tempore impedit laboriosam. In aut culpa expedita itaque id ab et.</p><p>Ducimus rerum nostrum aperiam fugit qui et. Facere quam dolorum corporis optio et est et tempora. Pariatur optio cum voluptatem animi vel et officiis distinctio.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(15, 2, 3, 'Aut quia asperiores omnis delectus in non.', 'unde-earum-omnis-eius-maxime-consequatur-minima', NULL, 'Esse placeat blanditiis quae omnis. Voluptas omnis placeat consequatur sint. Voluptatum quis cumque nesciunt dolore. Itaque unde laborum et ad dolor incidunt aliquam.', '<p>Aliquam possimus autem ut quisquam reiciendis quasi quos. Tempore aliquid ex reprehenderit nisi perferendis. Ea maiores dolor ut a dicta. Molestiae necessitatibus omnis esse maiores.</p><p>Hic impedit molestiae ipsum non. Earum maiores velit delectus vitae. Commodi voluptatem qui aut dicta provident odio amet deleniti. Nemo id et et voluptatem est. Ut blanditiis qui voluptates vero repudiandae est.</p><p>Et repudiandae veritatis necessitatibus animi fuga. Sed praesentium dolorem sed qui quaerat ut et et. Aliquam deleniti ea ad laudantium.</p><p>Laboriosam laborum in quidem saepe aut quis ut. Nam iste architecto ut esse et vel quidem.</p><p>Esse voluptatem voluptates eligendi dolores deleniti voluptatum aut. Odio assumenda sapiente neque eos deserunt ut et atque. Et officiis tenetur ea. Voluptatem perferendis est veritatis aut aliquam ex autem.</p><p>Nihil quo officiis quam ab harum labore. Nesciunt non doloremque nam quas dignissimos hic.</p><p>Illo et autem vero eaque quo. Sapiente dicta eum veritatis qui omnis ipsum doloribus. Consequuntur saepe accusamus qui eligendi.</p><p>Praesentium et velit quidem cum fugit enim. Quidem qui impedit modi ea sed. Quam est vero quibusdam perferendis impedit corrupti autem. Sed et corporis sapiente.</p><p>Qui in officia corrupti sed. Est sit pariatur aut et. Nobis est ab ea laborum voluptatum qui occaecati.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(16, 2, 1, 'Est blanditiis earum et provident culpa.', 'cum-soluta-nisi-sit-libero-exercitationem-explicabo-nemo', NULL, 'Beatae vel sequi officiis. Sed autem voluptatem illum. Sed qui repellendus ut sapiente debitis amet quasi.', '<p>Eum ut temporibus ut atque placeat. Est repellendus porro quibusdam omnis. Architecto hic ea sit corporis deleniti et officiis. Et soluta non fuga impedit maiores repellendus repellendus. Eum temporibus officia ut omnis numquam odit rerum.</p><p>Voluptatem omnis molestiae est quaerat pariatur et et. Et doloremque nam voluptatum odit velit consequuntur non. Et rerum et reiciendis natus dignissimos. Similique praesentium laudantium consequatur architecto. Adipisci fugit ut voluptates qui voluptatem qui.</p><p>Autem voluptatem sed sit quam quasi culpa. Minus enim enim consectetur consequatur voluptate odit. Dicta incidunt adipisci ut nemo ipsa est voluptatem. Reiciendis corrupti officiis nihil eum libero. Enim error quo eius similique excepturi deleniti adipisci.</p><p>Aut sapiente id in mollitia inventore dolorem enim maxime. Illo et fuga et voluptas occaecati aut fugiat. Est numquam aut dolor voluptatem consequatur ipsa perspiciatis eius. In consequuntur doloremque vel non repellendus laboriosam accusamus.</p><p>Optio in et labore voluptatem quia placeat tenetur ut. Possimus aut eum autem qui veniam.</p><p>Et vel dolorem qui. Asperiores et earum ea. Tempora voluptas rem sit dolor consequatur exercitationem natus. Doloribus dolor ullam aut voluptatem explicabo aspernatur quo.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(17, 1, 3, 'Perspiciatis repudiandae blanditiis.', 'autem-dolores-vel-non-esse-perspiciatis-voluptatem-eos', NULL, 'Error quisquam ullam minus possimus molestiae et. Reiciendis illo odio atque blanditiis. Quae labore suscipit a ea dolor pariatur quidem. Non repudiandae sit minus quo aut veritatis nihil. Ut perspiciatis natus architecto commodi blanditiis quae repellat.', '<p>Sint sed est aliquid animi quo non accusantium. Voluptatibus rerum laboriosam tempora maiores sint sapiente impedit nostrum.</p><p>Itaque possimus repudiandae veritatis. Culpa sed occaecati eum earum vitae. Ut recusandae fuga nostrum quam. Animi beatae tempore perferendis dolore maiores qui reiciendis.</p><p>Exercitationem dolor et accusamus magnam. Aut molestias natus molestiae sunt sed harum. Eos id ut nihil.</p><p>Minus cum animi adipisci. Possimus impedit expedita temporibus debitis molestiae recusandae. Et veniam modi vero est omnis. Temporibus nulla esse expedita aut totam neque possimus pariatur.</p><p>Repellat eius ut explicabo quia. Illo quaerat minus veniam unde voluptas qui ad non. Eum aperiam architecto error sunt quo minima. Expedita doloremque nostrum illo unde molestias sunt.</p><p>Velit praesentium est est. Quis ut dignissimos et est. Recusandae eum eum atque natus dolores. Repellat optio repellat totam ea. Animi qui voluptatibus inventore est eum.</p><p>Eos aperiam ut quam tempore maxime earum. Voluptas minima voluptatem ipsum. Repellat sapiente sed sint amet fuga necessitatibus.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(18, 1, 2, 'Omnis reiciendis consectetur nostrum aperiam blanditiis eligendi odio earum.', 'fuga-ducimus-totam-ad-sit-nobis-quis-eaque', NULL, 'Dolor quo sint minus corporis nobis. Quia explicabo dicta nostrum saepe voluptatem omnis aliquam accusamus. Tenetur nam modi dolorem ratione quod. Quos maxime expedita quas perspiciatis quae fuga qui odio.', '<p>Non et quas sapiente numquam enim laboriosam quae. Iure eos quia facere voluptatem quod eaque. Ut eius sint consequuntur illum quia.</p><p>Perspiciatis occaecati amet aliquam quis placeat facere consequatur. Consequatur rerum accusamus consequatur omnis blanditiis quas non recusandae. Placeat necessitatibus sit laborum ullam fugit sit qui.</p><p>Enim ut nulla quia qui aliquid dolorem. Ut repudiandae distinctio mollitia et. Soluta non soluta ullam atque qui aut consequatur excepturi.</p><p>Odio earum aliquid aut iusto quisquam ut suscipit. Voluptatem natus omnis a totam rerum dolorem. Qui et qui consequatur voluptas laboriosam suscipit.</p><p>Odio rerum ad nam. Suscipit facere quasi hic sed totam minus doloremque. In qui assumenda at laudantium.</p><p>Voluptate repellat accusantium ullam aut. Tempore dolor maxime fuga sit odio. Velit repellat omnis tenetur ad velit qui facilis.</p><p>Et molestiae qui aut occaecati. Sequi eum sint in iste commodi. Corporis nulla perspiciatis sit necessitatibus praesentium error. Ducimus provident omnis quis ea voluptas accusamus et tempora.</p>', NULL, '2021-09-13 23:27:11', '2021-09-13 23:27:11'),
(19, 1, 3, 'Qui corrupti in reprehenderit ipsum.', 'ea-quae-quia-velit-cumque-debitis', NULL, 'Nisi itaque ipsam aperiam unde. Nemo magnam possimus iure quidem est a. Occaecati sunt et qui voluptas qui aspernatur accusamus optio.', '<p>Perferendis autem voluptates eum repellat fugiat et mollitia. Non quos dolorum ipsum sit sequi officia quis. Rerum consequatur alias ut sed. Minus harum cum occaecati consequuntur et veritatis.</p><p>Aut fuga ut eaque et possimus quam non. Ut impedit corrupti mollitia necessitatibus dolor. Animi et et nihil velit voluptas accusamus.</p><p>Eum nihil sunt sint dolorum doloribus natus. Id ut numquam quis neque dolores non. Ratione magni ad repudiandae laboriosam porro. Ut modi cupiditate et est atque omnis.</p><p>Repellendus repellendus voluptates aperiam reiciendis soluta. Eaque temporibus esse aperiam eum eligendi praesentium velit. Vitae consectetur itaque voluptatem veniam. Voluptas rerum quibusdam fugit et.</p><p>Ut sit sit consequatur sit facere et exercitationem. Molestiae et qui maiores. Nesciunt dolore ad temporibus id voluptas. Aspernatur pariatur molestias esse accusantium.</p><p>Iure dicta aut praesentium corrupti architecto cumque. Recusandae non dolores aliquam deleniti. Dolor et earum quibusdam quia.</p><p>Reiciendis dolores quia sint quis sed officia quis. Sit voluptatem est tenetur similique voluptas magnam dolorem labore.</p><p>Omnis porro voluptas aliquam omnis repellendus blanditiis. Qui sint aperiam aut adipisci. Et et voluptates iste enim tempore consectetur dolorum. Voluptatem ex recusandae voluptas commodi. Tempore omnis et molestiae officia aliquam eos.</p><p>Odit ipsam recusandae aperiam laborum velit illum. Aliquam ut rerum est delectus sed aut rerum.</p><p>Eum natus labore ex expedita sit commodi consequatur. Quia earum voluptas cum eos molestias. Laboriosam repudiandae odio veniam praesentium. Nobis omnis accusamus et voluptatem nostrum.</p>', NULL, '2021-09-13 23:27:12', '2021-09-13 23:27:12'),
(20, 1, 2, 'Facere rerum expedita porro.', 'quis-similique-repudiandae-voluptatem-qui-totam-et-nisi', NULL, 'Sint id a autem. Hic et odio velit molestias asperiores. Vel consequatur aut natus. Repellat consequuntur qui dolorum debitis.', '<p>Accusamus eaque enim quam soluta quis sunt. Aut delectus nobis omnis et recusandae. Vel pariatur molestiae eveniet minima.</p><p>Vero quod ratione sint velit eum tenetur ut. Neque sed qui earum. Error magni iusto omnis.</p><p>Beatae harum veniam voluptas aut laudantium rerum. Recusandae quia est ea molestias a nam est. Esse pariatur eveniet omnis quae laborum eveniet sunt.</p><p>Eligendi voluptate ipsam id cupiditate eaque saepe. Omnis non consequuntur deserunt inventore rerum provident saepe. Soluta sit ea excepturi nostrum.</p><p>Natus impedit et esse fugiat. Non est maiores quae ea.</p><p>Autem et fuga similique aut. Hic eos architecto corrupti quidem. Expedita minima iusto nihil numquam.</p><p>Nostrum enim natus accusamus id rerum. Sunt voluptatum dicta velit ut minus sint. Sunt fuga ducimus id eos ab et dicta. Non repellendus quidem aliquam consequatur et a quia.</p><p>Mollitia voluptas ad exercitationem aliquam. Hic labore optio ratione cum. Fuga et voluptas sequi aliquam dolorem nihil. Illum laboriosam quis aspernatur sed.</p><p>Fugiat dolorum molestiae cupiditate totam aut aperiam omnis. Esse atque quis et unde fugit enim. Voluptas ut ad eos. Nihil pariatur sed et qui vitae rerum ratione.</p>', NULL, '2021-09-13 23:27:12', '2021-09-13 23:27:12'),
(21, 1, 4, 'Post Pertama', 'post-pertama', 'post-images/DU9A90IQkAIAKUIvwhN76H9L4ckieAq0PJndm5ns.jpg', 'Post Pertama', '<div>Post Pertama</div>', NULL, '2021-09-13 23:36:57', '2021-09-23 23:17:23'),
(22, 1, 4, 'Post Kedua', 'post-kedua', 'post-images/hCAQToUe9dqTydUdvypltq8Q1U2AcUb3aFVU3mo4.jpg', 'Post Kedua', '<div>Post Kedua</div>', NULL, '2021-09-13 23:48:35', '2021-09-23 23:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Queen Hartati', 'kani.halimah', 'rnurdiyanti@gmail.com', '2021-09-13 23:27:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zsmXsOyW3cH08L8n4ZnxOkFLSMaq3uUmUkRo4lND6UmKF3CLKO0My4fQz1nD', '2021-09-13 23:27:11', '2021-09-13 23:27:11', 0),
(2, 'Rahmi Usamah', 'umaya.pudjiastuti', 'karja.rajasa@example.com', '2021-09-13 23:27:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1fuDAVQ4X7', '2021-09-13 23:27:11', '2021-09-13 23:27:11', 0),
(3, 'Upik Kurniawan', 'unjani48', 'naradi.hutasoit@example.net', '2021-09-13 23:27:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pGC8XvRWEX', '2021-09-13 23:27:11', '2021-09-13 23:27:11', 0),
(4, 'Jovi Julian Hendri', 'jovi', 'jovi@gmail.com', NULL, '$2y$10$/w1Ui2wRnrerZNQ.xvLa2uFQAtREga4xFXPUn9rnFEm3S/41.sLwe', NULL, '2021-09-13 23:27:12', '2021-09-13 23:27:12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
