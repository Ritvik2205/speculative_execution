.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
not sil
xor dl, cl
jmp .bb_0.1
.bb_0.1:
or bl, 127
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
or bl, -54
or rdi, -11
xor cx, -18
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor al, 122
or sil, -49
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
