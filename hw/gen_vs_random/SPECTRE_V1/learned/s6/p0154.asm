.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
lea di, qword ptr [rax + rbx + 60]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sbb bl, dl
xchg rdx, rbx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
