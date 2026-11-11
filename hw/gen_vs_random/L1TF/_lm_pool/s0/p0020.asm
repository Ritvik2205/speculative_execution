.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 8
add eax, 109
test bl, 84
jmp .bb_0.1
.bb_0.1:
add sil, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rax, 1163013815
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and al, -68
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
lea rax, qword ptr [rdx + rcx + 53]
add bl, 68
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
