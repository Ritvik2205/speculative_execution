.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edi, esi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
cmovnbe dx, cx
btc ax, 61
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
test dil, -67
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
cmovle cx, cx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovl eax, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and dx, cx
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
bt esi, 98
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
and di, 50
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 57
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
