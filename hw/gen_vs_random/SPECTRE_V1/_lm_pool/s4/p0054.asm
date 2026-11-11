.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
add dil, 72
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
lea dx, qword ptr [rdi + rax]
and al, -23
xor bl, dl
bts eax, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
