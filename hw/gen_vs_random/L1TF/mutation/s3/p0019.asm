.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rbx, rdx
lea ax, qword ptr [rsi + rdx]
dec ax
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
cmovnle cx, cx
sbb eax, -403815802
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
setle al
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
add al, -46
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
cmovnbe cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
