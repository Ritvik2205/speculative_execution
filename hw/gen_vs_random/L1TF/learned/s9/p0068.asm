.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
test dil, -126
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
jmp .bb_0.2
.bb_0.2:
test dil, -126
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and dl, 10
lea rdi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
