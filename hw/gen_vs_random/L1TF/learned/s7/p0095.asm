.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add sil, -61
test al, -56
not al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
jmp .bb_0.2
.bb_0.2:
test cl, al
and sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
