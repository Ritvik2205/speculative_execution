.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
test al, -32
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
cmovz ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
