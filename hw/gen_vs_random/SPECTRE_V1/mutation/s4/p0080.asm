.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
bts rbx, 140
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
cmovnp dx, cx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
xchg si, ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
test sil, -101
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
