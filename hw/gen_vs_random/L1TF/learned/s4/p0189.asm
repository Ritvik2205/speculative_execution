.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 82
and ax, 26813
inc eax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 17
or ecx, 35
xor bl, dl
add bl, dl
jmp .bb_0.1
.bb_0.1:
or rax, 699028911
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
