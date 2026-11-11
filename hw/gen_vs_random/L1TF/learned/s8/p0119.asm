.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
jmp .bb_0.1
.bb_0.1:
mov bl, 35
sub sil, -99
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and dl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
