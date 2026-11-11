.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
add cl, 97 # instrumentation
adc bx, di
test al, 70
add dl, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
not rsi
setns dil
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add sil, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
lea rbx, qword ptr [rax]
add dl, 116 # instrumentation
cmovbe rax, rax
movsx ecx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
