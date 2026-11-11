.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
btr dx, ax
not bl
or rax, 1020005579
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
xor ax, -23364
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or cl, 39
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or rsi, 99
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or al, 37
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
