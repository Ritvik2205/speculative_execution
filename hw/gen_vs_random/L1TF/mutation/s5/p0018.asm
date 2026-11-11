.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
setb al
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xchg ebx, edi
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
