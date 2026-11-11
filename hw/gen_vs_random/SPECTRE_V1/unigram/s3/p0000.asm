.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
mov dl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 37
add cl, 75 # instrumentation
sbb dil, bl
test di, di
cmovl rcx, rax
cmp al, dl
bts rcx, 45
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
or dil, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
xor dil, 77
cmovl rsi, rdx
add bl, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 43
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
