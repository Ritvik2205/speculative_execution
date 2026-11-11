.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
or edx, eax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
lea ebx, qword ptr [rbx]
sub eax, -911655926
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
cmovz esi, eax
sub al, dl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
