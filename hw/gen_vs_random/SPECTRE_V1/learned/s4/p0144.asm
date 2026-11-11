.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 97
mul rcx
lea rbx, qword ptr [rdi]
test cl, -33
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
inc cl
add edx, 84
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
add cl, dil
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
