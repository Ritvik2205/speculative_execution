.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xchg sil, dl
and dx, 83
jmp .bb_0.1
.bb_0.1:
test al, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
