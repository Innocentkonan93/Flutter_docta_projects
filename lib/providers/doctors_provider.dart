import 'package:flutter/material.dart';

import 'doctor.dart';

class Doctors with ChangeNotifier {
  List<Doctor> _items = [
    Doctor(
      id: 'd1',
      name: 'Innocent KONAN',
      work: 'Médecin généraliste',
      image:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 5000,
      description: 'Lorem consequuntur facere minus! Vel autem esse, consectetur impedit, dicta expedita velit nostrum dolorem perspiciatis ullam eaque. Modi nemo ipsa incidunt delectus nobis provident quae cupiditate eius aliquid doloribus dolor iste, asperiores, neque et ut est nulla quos laborum debitis, ullam ad cum quidem obcaecati? Quo omnis vitae, exercitationem veniam quidem harum tempore impedit odio id sapiente optio veritatis voluptatem voluptatibus voluptate quaerat ex laborum quia praesentium! Distinctio odio vitae dolorum sit illo recusandae inventore, nostrum iste eligendi minima ex rem aut consequuntur in eveniet animi id corporis necessitatibus porro reprehenderit! Ab id, consequatur maiores similique dicta natus modi aliquid deserunt error quis nisi atque. Debitis excepturi quo odio culpa enim. Vero dignissimos officiis ullam harum, soluta !',

    ),
    Doctor(
      id: 'd2',
      name: 'Rebecca ATTIMI',
      work: 'Médecin dermatologue',
      image:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 5000,
      description: 'Lorem consequuntur facere minus! Vel autem esse, consectetur impedit, dicta expedita velit nostrum dolorem perspiciatis ullam eaque. Modi nemo ipsa incidunt delectus nobis provident quae cupiditate eius aliquid doloribus dolor iste, asperiores, neque et ut est nulla quos laborum debitis, ullam ad cum quidem obcaecati? Quo omnis vitae, exercitationem veniam quidem harum tempore impedit odio id sapiente optio veritatis voluptatem voluptatibus voluptate quaerat ex laborum quia praesentium! Distinctio odio vitae dolorum sit illo recusandae inventore, nostrum iste eligendi minima ex rem aut consequuntur in eveniet animi id corporis necessitatibus porro reprehenderit! Ab id, consequatur maiores similique dicta natus modi aliquid deserunt error quis nisi atque. Debitis excepturi quo odio culpa enim. Vero dignissimos officiis ullam harum, soluta !',

    ),
    Doctor(
      id: 'd3',
      name: 'Michel KOYA',
      work: 'Médecin psychatre',
      image:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 5000,
      description: 'Lorem consequuntur facere minus! Vel autem esse, consectetur impedit, dicta expedita velit nostrum dolorem perspiciatis ullam eaque. Modi nemo ipsa incidunt delectus nobis provident quae cupiditate eius aliquid doloribus dolor iste, asperiores, neque et ut est nulla quos laborum debitis, ullam ad cum quidem obcaecati? Quo omnis vitae, exercitationem veniam quidem harum tempore impedit odio id sapiente optio veritatis voluptatem voluptatibus voluptate quaerat ex laborum quia praesentium! Distinctio odio vitae dolorum sit illo recusandae inventore, nostrum iste eligendi minima ex rem aut consequuntur in eveniet animi id corporis necessitatibus porro reprehenderit! Ab id, consequatur maiores similique dicta natus modi aliquid deserunt error quis nisi atque. Debitis excepturi quo odio culpa enim. Vero dignissimos officiis ullam harum, soluta !',

    ),
    Doctor(
      id: 'd4',
      name: 'Marcellin APPIA',
      work: 'Médecin psychatre',
      image:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 5000,
      description: 'Lorem consequuntur facere minus! Vel autem esse, consectetur impedit, dicta expedita velit nostrum dolorem perspiciatis ullam eaque. Modi nemo ipsa incidunt delectus nobis provident quae cupiditate eius aliquid doloribus dolor iste, asperiores, neque et ut est nulla quos laborum debitis, ullam ad cum quidem obcaecati? Quo omnis vitae, exercitationem veniam quidem harum tempore impedit odio id sapiente optio veritatis voluptatem voluptatibus voluptate quaerat ex laborum quia praesentium! Distinctio odio vitae dolorum sit illo recusandae inventore, nostrum iste eligendi minima ex rem aut consequuntur in eveniet animi id corporis necessitatibus porro reprehenderit! Ab id, consequatur maiores similique dicta natus modi aliquid deserunt error quis nisi atque. Debitis excepturi quo odio culpa enim. Vero dignissimos officiis ullam harum, soluta !',
    ),
    Doctor(
      id: 'd5',
      name: 'Rebecca SERI',
      work: 'Médecin psychatre',
      image:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 5000,
      description: 'Lorem consequuntur facere minus! Vel autem esse, consectetur impedit, dicta expedita velit nostrum dolorem perspiciatis ullam eaque. Modi nemo ipsa incidunt delectus nobis provident quae cupiditate eius aliquid doloribus dolor iste, asperiores, neque et ut est nulla quos laborum debitis, ullam ad cum quidem obcaecati? Quo omnis vitae, exercitationem veniam quidem harum tempore impedit odio id sapiente optio veritatis voluptatem voluptatibus voluptate quaerat ex laborum quia praesentium! Distinctio odio vitae dolorum sit illo recusandae inventore, nostrum iste eligendi minima ex rem aut consequuntur in eveniet animi id corporis necessitatibus porro reprehenderit! Ab id, consequatur maiores similique dicta natus modi aliquid deserunt error quis nisi atque. Debitis excepturi quo odio culpa enim. Vero dignissimos officiis ullam harum, soluta !',

    ),
    Doctor(
      id: 'd6',
      name: 'Ba SELLOU',
      work: 'Médecin généraliste',
      image:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 5000,
      description: 'Lorem consequuntur facere minus! Vel autem esse, consectetur impedit, dicta expedita velit nostrum dolorem perspiciatis ullam eaque. Modi nemo ipsa incidunt delectus nobis provident quae cupiditate eius aliquid doloribus dolor iste, asperiores, neque et ut est nulla quos laborum debitis, ullam ad cum quidem obcaecati? Quo omnis vitae, exercitationem veniam quidem harum tempore impedit odio id sapiente optio veritatis voluptatem voluptatibus voluptate quaerat ex laborum quia praesentium! Distinctio odio vitae dolorum sit illo recusandae inventore, nostrum iste eligendi minima ex rem aut consequuntur in eveniet animi id corporis necessitatibus porro reprehenderit! Ab id, consequatur maiores similique dicta natus modi aliquid deserunt error quis nisi atque. Debitis excepturi quo odio culpa enim. Vero dignissimos officiis ullam harum, soluta !',

    ),
    Doctor(
      id: 'd7',
      name: 'Emerson KOUASSI',
      work: 'Médecin psychatre',
      image:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      price: 5000,
      description: 'Lorem consequuntur facere minus! Vel autem esse, consectetur impedit, dicta expedita velit nostrum dolorem perspiciatis ullam eaque. Modi nemo ipsa incidunt delectus nobis provident quae cupiditate eius aliquid doloribus dolor iste, asperiores, neque et ut est nulla quos laborum debitis, ullam ad cum quidem obcaecati? Quo omnis vitae, exercitationem veniam quidem harum tempore impedit odio id sapiente optio veritatis voluptatem voluptatibus voluptate quaerat ex laborum quia praesentium! Distinctio odio vitae dolorum sit illo recusandae inventore, nostrum iste eligendi minima ex rem aut consequuntur in eveniet animi id corporis necessitatibus porro reprehenderit! Ab id, consequatur maiores similique dicta natus modi aliquid deserunt error quis nisi atque. Debitis excepturi quo odio culpa enim. Vero dignissimos officiis ullam harum, soluta !',

    ),
  ];

  List<Doctor> get items {
    return [..._items];
  }

  Doctor findById(String id) {
    return _items.firstWhere((doc) => doc.id == id);
  }
}
