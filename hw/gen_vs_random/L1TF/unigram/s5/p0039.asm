.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
add cl, 107 # instrumentation
cmovnl si, si
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
lea rax, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
lea ax, qword ptr [rax + rdx + 90]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
cmovle eax, ecx
xor rsi, rax
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
cbw
add cl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
cmovb ax, dx
mul ebx
sbb ecx, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
