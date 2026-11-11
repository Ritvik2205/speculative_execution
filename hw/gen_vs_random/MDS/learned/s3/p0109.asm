.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
not sil
test bl, -14
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, -75
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
xor dil, sil
and ax, 19740
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
