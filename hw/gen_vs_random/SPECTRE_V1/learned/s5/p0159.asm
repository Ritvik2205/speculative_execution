.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
or al, 100
add bl, -95
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
setbe cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
bt edx, eax
lea di, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
