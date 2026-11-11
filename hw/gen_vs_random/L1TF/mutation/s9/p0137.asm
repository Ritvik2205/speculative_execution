.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, -36
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor bl, -5
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc dl, al
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
cmovl rcx, rdi
add al, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
lea rdi, qword ptr [rbx + rsi + 20302]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
btr edi, 1
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
or rax, 1362710293
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
cmovnl rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
btc si, dx
lea di, qword ptr [rsi + rcx + 28149]
cwde
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
or cl, bl
sub si, 83
cmp dl, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
