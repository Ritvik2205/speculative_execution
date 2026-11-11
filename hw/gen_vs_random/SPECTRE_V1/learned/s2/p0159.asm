.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
xchg rbx, rax
xor cl, sil
mov al, sil
sbb cl, dl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
