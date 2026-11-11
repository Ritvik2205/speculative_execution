.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
lea rbx, qword ptr [rbx + rdi + 3362]
xchg ecx, edx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
sub dl, cl
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 29
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
