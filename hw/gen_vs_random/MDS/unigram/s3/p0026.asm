.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
btc cx, 115
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
btr ax, ax
cmovo cx, si
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 31
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovp di, di
cmovbe edx, esi
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
bts bx, 3
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor di, 40
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
