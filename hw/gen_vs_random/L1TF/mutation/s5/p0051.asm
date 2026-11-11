.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
inc dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb al, 92
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
cmovnp rdx, rdx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
test rdi, rbx
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
