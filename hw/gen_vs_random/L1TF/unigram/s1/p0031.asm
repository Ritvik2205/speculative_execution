.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
test cl, sil
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
lea rsi, qword ptr [rcx + rsi + 33]
add bl, -9 # instrumentation
adc rsi, 84
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
add dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
cmovnz rdi, rdx
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
