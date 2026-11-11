.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 92
xor rbx, 4
or dil, cl
xor rsi, 81
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 45
and dl, dl
lea rax, qword ptr [rdx + rcx + 96]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
