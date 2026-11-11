.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
sub al, -97
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, bl
jmp .bb_0.2
.bb_0.2:
lea eax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
dec al
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
xor dl, dil
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
add bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
