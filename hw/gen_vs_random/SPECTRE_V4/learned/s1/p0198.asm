.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, eax
cmp eax, 64
dec al
dec cl
mov bl, al
or al, 1
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
cmp ax, 28568
mov sil, dl
movsx si, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
cmp dil, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
