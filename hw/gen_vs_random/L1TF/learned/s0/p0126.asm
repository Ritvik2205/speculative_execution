.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, di
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
xor al, 45
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea rsi, qword ptr [rdx + rcx + 55]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
