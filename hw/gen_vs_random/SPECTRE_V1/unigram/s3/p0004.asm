.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
lea ax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
test dl, -36
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 3
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
xchg bl, al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 95
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
add al, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
cmovnbe edx, ebx
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
