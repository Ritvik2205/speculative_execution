.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 100
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 15
or sil, bl
xor bl, 2
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
test al, 74
xor dl, -68
bts ax, cx
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
xor cx, 33
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 55
btr rsi, 73
or dil, al
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
cmovnl si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
