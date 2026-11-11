.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -42 # instrumentation
lea cx, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 94
cmovs rax, rcx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add cl, -23 # instrumentation
cmovl ax, cx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ebx
lea cx, qword ptr [rbx]
or cl, cl
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
lea rsi, qword ptr [rax + rbx + 94]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
add edi, -91
sub bl, -19
xor rsi, 20
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
