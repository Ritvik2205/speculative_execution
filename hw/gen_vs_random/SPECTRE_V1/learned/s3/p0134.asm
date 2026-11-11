.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
sbb dil, -93
mov al, dl
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and al, -54
mov dl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
xchg bl, al
adc ecx, 32
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
