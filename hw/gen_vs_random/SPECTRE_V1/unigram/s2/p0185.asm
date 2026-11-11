.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 59
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 68
or bl, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
dec rdx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -4
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
