.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
cmovnle cx, cx
add al, 74
sbb rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
setle al
sbb eax, -1165635662
lea ax, qword ptr [rsi + rdx]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
cmovnbe cx, di
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add cl, dl
sub al, dl
sub dl, -34
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
