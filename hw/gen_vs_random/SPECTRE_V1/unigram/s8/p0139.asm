.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
add bl, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
add cl, 107 # instrumentation
lea ecx, qword ptr [rsi + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
add dl, 47
add ax, 23362
movsx rdi, bx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
xor sil, -33
cmovnz si, si
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
