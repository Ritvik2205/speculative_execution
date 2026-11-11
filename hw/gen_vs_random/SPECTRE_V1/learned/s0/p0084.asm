.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmovns rax, rbx
and bl, 87
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor al, 78
cmp ax, -11439
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
