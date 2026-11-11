.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 8
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
test rdi, 92
test sil, -55
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
test al, al
cmovbe cx, dx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 27
cmovnbe rdx, rdx
or al, dl
bt edx, edi
cmovnp dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and bl, -123 # instrumentation
cmovnp dx, ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
