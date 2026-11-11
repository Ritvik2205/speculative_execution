.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 79
cmp sil, bl
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], esi
sbb sil, bl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
test ax, -30637
inc rdi
or bl, 20
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
add edx, 26
test al, 40
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
