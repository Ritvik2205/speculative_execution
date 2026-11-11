.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
test ax, 22956
setnb bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
setl cl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
xor al, bl
imul dx, di, 103
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
test eax, esi
movzx ax, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
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
sbb al, -14
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
