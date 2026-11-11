.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
inc rax
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
mov dl, 121
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub rax, 1806572419
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
lea ecx, qword ptr [rdx]
mov bl, dl
xor di, cx
cmp cl, -89
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
jmp .bb_0.2
.bb_0.2:
cbw
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
adc rax, 1431457700
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
