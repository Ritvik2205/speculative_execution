.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
adc bl, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rcx + rsi + 71]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
