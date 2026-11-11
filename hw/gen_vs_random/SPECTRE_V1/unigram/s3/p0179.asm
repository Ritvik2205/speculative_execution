.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 39
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 28
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and dl, 96
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
mul rdi
xor dil, 77
sub esi, -120
lea rbx, qword ptr [rsi + rdx + 84]
lea ax, qword ptr [rcx + rbx + 28]
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
setnb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
