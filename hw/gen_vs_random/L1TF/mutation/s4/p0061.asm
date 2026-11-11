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
add al, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
btr rdx, 203
sub di, cx
sub edi, 57
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
sub rsi, rcx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
cmovnp rdx, rdx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
sbb al, 92
inc dl
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
test rdi, rbx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
