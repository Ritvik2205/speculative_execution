.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
inc dl
sbb al, -23
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
test rdi, rbx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
cmovnp rdx, rdx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
