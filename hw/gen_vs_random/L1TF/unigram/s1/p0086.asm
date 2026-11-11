.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
cmovz ebx, eax
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
inc rax
cmovnle ax, ax
adc bl, -14
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
cmovns esi, ebx
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
lea rax, qword ptr [rcx + rdi]
cmovnz rax, rsi
movzx edi, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
