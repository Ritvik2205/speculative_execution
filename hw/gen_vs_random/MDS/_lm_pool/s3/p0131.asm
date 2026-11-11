.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, ax
and sil, sil
or al, -17
xor cl, 98
test ecx, -1843375753
test eax, 424329527
or rsi, 73
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
btr dx, cx
test al, dl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
or bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
