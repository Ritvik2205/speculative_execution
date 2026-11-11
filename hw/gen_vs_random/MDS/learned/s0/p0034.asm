.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
or si, -12
test dil, -80
xor dil, -124
test dil, sil
and bl, cl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or cl, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
or dil, -78
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and cl, sil
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
