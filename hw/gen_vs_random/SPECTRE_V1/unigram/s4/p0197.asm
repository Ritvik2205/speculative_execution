.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rcx], di
cmovnbe bx, dx
btr rcx, 131
imul bx, dx, 6
sub al, al
setnp cl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
adc al, sil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 31
sub cx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
