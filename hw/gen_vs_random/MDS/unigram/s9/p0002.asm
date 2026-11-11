.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -69
cmovno cx, bx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
bts edi, edi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 11
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
or bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
and dl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
test esi, ebx
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
