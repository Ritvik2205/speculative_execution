.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
cmovnbe rcx, rdi
or bl, dil
lea rcx, qword ptr [rdi + rax]
bt eax, 127
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 83
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
add bl, -108 # instrumentation
sbb dl, 77
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 31
cmovl ax, di
xor dil, 77
inc cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
cmovno ecx, esi
lea bx, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
