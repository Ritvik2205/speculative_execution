.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and sil, 74
test al, 22
or dl, bl
jmp .bb_0.1
.bb_0.1:
or bl, -54
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or cl, cl
and bl, cl
bts rdi, 130
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or cl, -77
or dil, -41
jmp .bb_0.5
.bb_0.5:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
or rax, -1561934807
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
