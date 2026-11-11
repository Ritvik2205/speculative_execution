.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 36
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rsi, rdx
or al, -57
sub rsi, 3
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb cl, al
jmp .bb_0.2
.bb_0.2:
or sil, al
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
