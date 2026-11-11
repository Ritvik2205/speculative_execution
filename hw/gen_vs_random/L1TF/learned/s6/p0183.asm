.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
sbb dl, -26
mov ebx, ecx
or rbx, 18
jmp .bb_0.1
.bb_0.1:
add al, 74
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
