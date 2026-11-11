.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and cl, 34 # instrumentation
cmovno ecx, edi
cmovp ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmovz esi, esi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 49
or rdx, -48
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
or dl, cl
cmovle ebx, edx
bts rax, rdx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
