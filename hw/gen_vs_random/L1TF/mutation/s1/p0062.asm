.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe ax, si
lea rbx, qword ptr [rsi + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
sbb ax, -5921
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add cl, 65 # instrumentation
cmovo rcx, rbx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovl di, bx
lea dx, qword ptr [rax + rax]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
add cl, -98 # instrumentation
setp bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
sbb al, -23
sub al, -97
lea cx, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
