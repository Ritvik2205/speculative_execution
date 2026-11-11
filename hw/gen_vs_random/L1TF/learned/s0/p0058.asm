.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 82
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
add sil, -61
add dl, al
jmp .bb_0.1
.bb_0.1:
sub al, 26
jmp .bb_0.2
.bb_0.2:
or sil, -44
lea ax, qword ptr [rdi + rbx + 17]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
