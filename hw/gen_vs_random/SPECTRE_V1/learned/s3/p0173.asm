.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
imul ax, cx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
xor rsi, 73
jns .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, 26 # instrumentation
sbb bl, dl
cmovnl esi, eax
lea rsi, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
