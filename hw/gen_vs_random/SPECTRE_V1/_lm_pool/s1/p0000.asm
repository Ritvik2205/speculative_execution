.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb eax, esi
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
mov dil, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
sub cl, dil
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
