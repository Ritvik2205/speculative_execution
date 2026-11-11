.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
neg rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
cmovl edx, edi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 24
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, dil
add bl, 32 # instrumentation
sbb cl, bl
add dil, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
add bl, dl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edx
lea si, qword ptr [rcx + rbx + 46193]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
