.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
cmovs cx, dx
sub cl, bl
lea rax, qword ptr [rdx + rbx]
sbb sil, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
or bl, dl
sub bl, 15
sbb al, 61
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
