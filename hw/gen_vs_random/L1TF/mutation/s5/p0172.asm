.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
setb al
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
xchg ebx, edi
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
btr rdx, 203
add al, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
sub rsi, rcx
sub edi, 56
sub di, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
