.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
btr edx, ebx
and cl, cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 69
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 70
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
sub dl, -34
add al, -65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
cbw
add al, 87 # instrumentation
cmovo rdx, rbx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
cmp cx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
