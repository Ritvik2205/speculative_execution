.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
lea si, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
or dil, -113
add dil, 88
jmp .bb_0.2
.bb_0.2:
add bl, 68
xor bl, al
sbb al, dl
add dil, -7
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 83
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
