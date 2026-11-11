.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 38
and ebx, 41
cmovns esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 74
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
cmovle rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
cmovl rsi, rcx
btr bx, 47
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
cmovbe dx, cx
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
or edx, 66
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
