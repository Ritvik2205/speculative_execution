.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -68
cmovnp ax, bx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and al, bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
