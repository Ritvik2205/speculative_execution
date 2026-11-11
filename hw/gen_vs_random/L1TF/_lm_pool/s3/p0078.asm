.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
test sil, 29
and cl, 66
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
sub sil, -99
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 96
test cx, 66
jmp .bb_0.1
.bb_0.1:
and dl, 84 # instrumentation
cmovle ax, dx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
xor bl, sil
or al, -48
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
