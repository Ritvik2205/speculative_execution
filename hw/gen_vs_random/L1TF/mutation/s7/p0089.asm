.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
add cl, 40 # instrumentation
cmovbe ax, si
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
sbb ax, -4845
lea rbx, qword ptr [rsi + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
lea dx, qword ptr [rax + rax]
add cl, -98 # instrumentation
setp bl
add cl, 65 # instrumentation
cmovo rcx, rbx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovl di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
