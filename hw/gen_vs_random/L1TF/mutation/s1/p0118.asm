.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rbx, rdx
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
cmovnbe cx, di
dec ax
cmovnle cx, cx
lea ax, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
sbb eax, -403815802
setle al
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
add al, -102
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
