.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and dl, 97 # instrumentation
cmovnp di, ax
cmovno rbx, rsi
cmovbe rdi, rax
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and dl, -1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
cmovz si, si
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
test rbx, 92
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
