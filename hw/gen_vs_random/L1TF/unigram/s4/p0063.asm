.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdi + rbx]
xor sil, dil
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
test rax, rdx
add al, 61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
add bl, -117 # instrumentation
lea rdx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 42
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
sub al, 25
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 81
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
mov sil, sil
cmovno di, di
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 26
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
