.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, al
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
test rax, 1469613902
add esi, 77
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, al
or dil, dil
add al, -65
add al, bl
add bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
