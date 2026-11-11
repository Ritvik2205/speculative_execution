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
add sil, -68
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
lea edi, qword ptr [rdi + rdi + 44205]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
movzx si, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
