.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle al
cmovnbe cx, di
lea ax, qword ptr [rsi + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
dec ax
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
sbb rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
add al, -80
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
sbb eax, -403815802
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
