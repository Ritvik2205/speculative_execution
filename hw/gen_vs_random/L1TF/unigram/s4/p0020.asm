.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
sbb rdx, 98
seto dl
test eax, -2032743474
cmovo cx, bx
jmp .bb_0.1
.bb_0.1:
and dl, 59
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
sub rdx, 58
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
adc al, -103
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
lea rax, qword ptr [rdi + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 14
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
add dl, 70 # instrumentation
sbb al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
