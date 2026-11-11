.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
xor cl, cl
and dl, al
or dl, cl
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax + rbx + 49]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
