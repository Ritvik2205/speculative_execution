.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
sbb dil, 9
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rdi, 75
test sil, 29
jmp .bb_0.1
.bb_0.1:
cmovns edi, esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rsi]
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and dl, dil
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
xor dl, dl
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
