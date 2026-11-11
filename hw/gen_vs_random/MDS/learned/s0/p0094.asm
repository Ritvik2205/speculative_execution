.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
test dil, sil
and bl, sil
test al, 22
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and cl, -19
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or al, 30
test al, -81
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or cl, al
and rdx, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
