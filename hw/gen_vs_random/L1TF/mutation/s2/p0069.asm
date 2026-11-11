.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 16
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
sbb rax, 803312930
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovo rbx, rdi
sbb cl, -11
cwde
btc rax, 14
xor ax, 0
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -76
lea dx, qword ptr [rbx + rdx]
bt rcx, rsi
or al, bl
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add al, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
lea rax, qword ptr [rdx + rsi]
mov al, -101
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
add bl, al
cmovl di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
