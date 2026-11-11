.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
xor bl, -38
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
xor dil, sil
sbb bl, cl
and bl, bl
add dil, 72
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 83
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
lea si, qword ptr [rdx + rbx + 26]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
