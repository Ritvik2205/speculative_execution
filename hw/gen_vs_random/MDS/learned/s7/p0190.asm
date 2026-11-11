.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 82
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
btr ax, 193
test al, dl
or sil, bl
or rdx, -48
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
or dil, cl
test edi, -1252846009
test cl, 101
and al, dil
xor dil, 124
cmovnbe rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
