.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or dl, cl
xor cl, sil
and rax, -1931765367
jmp .bb_0.1
.bb_0.1:
and eax, 366961170
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and al, 75
and rbx, 65
and rax, -2039117613
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
