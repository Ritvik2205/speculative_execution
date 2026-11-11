.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, dil
sbb sil, dil
not sil
cmovnp di, di
cmovno rcx, rax
cmovno rdx, rdi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
lea rsi, qword ptr [rcx + rdi]
bt rdx, 57
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
cmovbe rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
add rbx, 9
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
