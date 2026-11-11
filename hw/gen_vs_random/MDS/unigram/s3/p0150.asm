.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 45 # instrumentation
cmovnb ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
cmovp si, bx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 59
not rsi
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
btr edx, ecx
or sil, -49
or cl, 7
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
xor cx, -18
and di, 99
and cl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
