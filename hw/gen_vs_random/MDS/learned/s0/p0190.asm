.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
or dl, al
test rax, 1214712583
test dl, 48
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or al, bl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
not bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
test bl, 65
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
or cl, 119
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
