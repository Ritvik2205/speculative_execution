.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 84
adc sil, 55
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
and bx, si
add bl, 48 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 64
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
jmp .bb_0.1
.bb_0.1:
cmovnz rbx, rax
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 2
or al, sil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
