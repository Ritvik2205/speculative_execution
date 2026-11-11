.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
xor al, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test al, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
test dil, -51
or rdx, -48
xor di, 40
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor si, 80
or al, 30
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
