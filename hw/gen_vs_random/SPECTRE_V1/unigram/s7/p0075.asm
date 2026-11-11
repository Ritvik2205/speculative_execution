.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
lea di, qword ptr [rdi + rdi + 8444]
add al, 64 # instrumentation
cmovnz si, cx
lea dx, qword ptr [rcx + rsi]
add sil, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 37
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub bx, 34
adc edx, 17
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
add cl, -89 # instrumentation
sbb ecx, edx
setbe sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb dx, di
lea rbx, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
