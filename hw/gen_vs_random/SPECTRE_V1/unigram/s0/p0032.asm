.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rdx
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
lea rcx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
adc dil, 80
setnl al
xor rdx, 36
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
lea eax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
