.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
cmovo ebx, esi
or dil, -78
and cl, bl
or rax, -1523798580
or cl, cl
or dil, -78
and dl, dil
cmovz rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
btr rsi, 207
cmovbe si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
