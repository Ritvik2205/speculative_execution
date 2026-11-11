.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 8
and rax, -109
sub bl, 15
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
add dx, 17
cmovo si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
