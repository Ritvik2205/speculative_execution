.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
mov dl, -36
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
inc rax
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdx]
sub rax, -2089384489
xor di, cx
mov bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
cmp cl, -89
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
