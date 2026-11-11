.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, ax
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
lea di, qword ptr [rsi]
xchg rdx, rax
lea eax, qword ptr [rsi]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 48
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 71
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
lea bx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
