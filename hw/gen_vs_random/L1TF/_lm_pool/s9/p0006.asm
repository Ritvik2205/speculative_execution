.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
test al, bl
xor al, 38
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
sbb dil, bl
xor cl, bl
and dl, cl
sub bl, -96
or eax, 1495028166
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
