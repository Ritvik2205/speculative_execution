.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor al, 16
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 73
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
lea rbx, qword ptr [rsi + rax]
add dl, -1
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sbb al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
