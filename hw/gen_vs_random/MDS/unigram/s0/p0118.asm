.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
cmovo di, cx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
cmovnbe ax, cx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
cmovnl rdi, rdi
and dil, dil
bts bx, 13
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 100
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 13
or bl, -98
test edx, 97
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
