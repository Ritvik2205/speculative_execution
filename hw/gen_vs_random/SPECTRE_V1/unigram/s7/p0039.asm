.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 60 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
lea ax, qword ptr [rdx]
imul rbx, rcx
add dl, -125 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 38
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
adc edx, 13
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 72 # instrumentation
adc dl, 73
or dl, bl
cmovz di, di
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
dec rsi
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
