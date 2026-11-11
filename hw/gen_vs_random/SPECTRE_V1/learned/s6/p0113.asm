.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
test cl, -62
test cl, -33
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
lea di, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
lea rdx, qword ptr [rbx + rsi + 15]
sub bl, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
