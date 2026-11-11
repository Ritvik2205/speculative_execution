.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
cmp cx, 78
cwd
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
sbb rdi, 80
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
adc al, 80
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
btr si, 33
test al, cl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
