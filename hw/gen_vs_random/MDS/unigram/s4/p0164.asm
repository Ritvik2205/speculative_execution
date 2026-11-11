.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
cmovs edi, edi
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
test rbx, 1
and bl, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
or cl, dl
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and cl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and dl, -107 # instrumentation
cmovz rax, rdi
cmovnb ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
