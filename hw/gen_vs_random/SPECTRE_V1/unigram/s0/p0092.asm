.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 28
cmovnbe ax, dx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
adc ebx, 91
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 89
add dil, 45 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
cmovl ecx, ecx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
js .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 100
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
sub cl, bl
lea dx, qword ptr [rcx + rdx]
inc sil
and rax, rdi
bts rcx, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
