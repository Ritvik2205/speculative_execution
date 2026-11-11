.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
xor cl, al
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
xor bl, -61
xor ax, -23364
and bx, 1
or cl, -77
jmp .bb_0.1
.bb_0.1:
xor cx, -18
xor bl, al
and sil, al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
test rax, -359674714
and al, 87
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
