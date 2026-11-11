.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
or rax, 185991441
adc al, 41
cmp al, 115
xchg rdi, rcx
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmp rbx, -66
xor cl, al
and al, -124
or rbx, rcx
adc dl, bl
sbb sil, 24
or al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
