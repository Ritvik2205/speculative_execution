.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor rsi, 31
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
lea cx, qword ptr [rdi + rcx + 55876]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
