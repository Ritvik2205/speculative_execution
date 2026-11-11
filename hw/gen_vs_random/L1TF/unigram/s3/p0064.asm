.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, cl
and rsi, 98
add bl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp bx, si
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 2
imul rax, rdi
mov sil, bl
or cl, 85
btr di, si
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 97
and bl, 125
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
