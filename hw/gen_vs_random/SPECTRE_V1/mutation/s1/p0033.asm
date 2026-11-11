.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
cmp eax, 100
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 18
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
xor rcx, rsi
test ax, -13885
sub di, ax
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
