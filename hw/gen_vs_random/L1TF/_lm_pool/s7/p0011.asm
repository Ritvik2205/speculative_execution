.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
inc cl
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
xor sil, 64
sub cl, al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
sub cl, -49
cmp rbx, 66
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
