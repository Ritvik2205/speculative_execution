.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
test al, dil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xor sil, -33
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
lea rbx, qword ptr [rdx + rcx + 97]
sub al, sil
test dil, -116
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
