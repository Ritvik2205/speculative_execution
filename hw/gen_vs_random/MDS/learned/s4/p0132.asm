.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test dil, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
not al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or ax, 85
bt eax, esi
and dl, -73
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
