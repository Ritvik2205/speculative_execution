.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
add dil, cl
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb al, -4
test bl, bl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
