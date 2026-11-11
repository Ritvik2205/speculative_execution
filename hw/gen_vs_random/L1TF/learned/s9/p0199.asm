.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
inc al
mov al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and esi, 38
jmp .bb_0.2
.bb_0.2:
or dl, sil
xchg dil, bl
jmp .bb_0.3
.bb_0.3:
test bl, 84
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
