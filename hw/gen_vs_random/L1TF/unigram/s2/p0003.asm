.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, 81
lea ax, qword ptr [rsi]
xchg cl, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
not bl
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 57
mov si, di
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 96
btc rdx, 63
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
adc eax, 551972257
btc si, 4
cmp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
