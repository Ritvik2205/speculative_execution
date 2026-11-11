.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
cmovno si, cx
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
xor di, 64
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -68
cmovle rdi, rax
adc edi, 117
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
