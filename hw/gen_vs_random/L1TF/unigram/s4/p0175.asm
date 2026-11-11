.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 98
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
test rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rbx]
lea ecx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
cmovnp rdi, rdi
nop
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
cmovb ecx, ebx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
setb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
