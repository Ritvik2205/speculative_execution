.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
sbb ax, -9396
lea rbx, qword ptr [rsi + rsi]
add cl, 40 # instrumentation
cmovbe ax, si
jmp .bb_0.1
.bb_0.1:
add cl, -98 # instrumentation
setp bl
lea dx, qword ptr [rax + rax]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovl di, bx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
add cl, 65 # instrumentation
cmovo rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
