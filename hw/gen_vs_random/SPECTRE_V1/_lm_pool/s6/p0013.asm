.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sbb sil, -78
xor bl, al
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 25
and dl, -109
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
mov dl, al
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
