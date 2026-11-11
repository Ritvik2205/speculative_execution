.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
setb al
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
add al, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub rsi, rcx
add al, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
sub di, cx
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
sub edi, 27
btr rdx, 203
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
