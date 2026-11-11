.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
or rax, -357903210
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
cwd
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
setnbe dl
and si, ax
mov bl, sil
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
add dil, 32 # instrumentation
sbb cl, dil
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
