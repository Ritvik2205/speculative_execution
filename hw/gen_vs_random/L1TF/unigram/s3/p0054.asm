.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 33
xor bl, bl
and ax, 26813
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
lea rdi, qword ptr [rax + rsi + 47]
adc dl, -12
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
xor rcx, rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 8
add dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
