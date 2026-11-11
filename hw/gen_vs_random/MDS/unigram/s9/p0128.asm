.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
cmovbe esi, ecx
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and bl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and bl, 49 # instrumentation
cmovbe rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
test bl, sil
cmovz rax, rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
