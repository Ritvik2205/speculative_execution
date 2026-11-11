.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -92
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
bt rbx, rax
or rbx, 18
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdi]
add edi, 27
cmovz rcx, rax
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
