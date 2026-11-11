.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 118 # instrumentation
cmovp esi, edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
xor al, al
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
cmovnp ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
cmovo bx, ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
jmp .bb_0.1
.bb_0.1:
not rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
cmovbe di, ax
cmovnl eax, edx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
