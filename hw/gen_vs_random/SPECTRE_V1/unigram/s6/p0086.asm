.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
dec rdx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
neg esi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -21
setp al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 10
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 58
lea ecx, qword ptr [rdx]
nop
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
