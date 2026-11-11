.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
xor al, dil
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
test al, 84
mov al, sil
mov cl, dil
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
