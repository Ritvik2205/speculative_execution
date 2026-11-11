.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 13 # instrumentation
setns bl
cmovno rbx, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
xor bl, -38
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
lea edi, qword ptr [rdi + rbx + 48359]
cmovns rdx, rbx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and cl, al
adc al, -82
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
