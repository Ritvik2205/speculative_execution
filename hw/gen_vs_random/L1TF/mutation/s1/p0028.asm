.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
cmovnle cx, cx
add al, 56
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
sbb eax, -403815802
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
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
dec bx
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and al, al
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
