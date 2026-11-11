.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
cmp si, -11
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 20
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
cmovs bx, dx
lea rax, qword ptr [rax + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
test bl, -8
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
adc al, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
