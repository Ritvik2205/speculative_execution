.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
btc rbx, rax
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 48
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and sil, 74
cmovnp rsi, rax
and dl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and cl, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 1
and dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
cmovnb bx, ax
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rdi, 97
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
