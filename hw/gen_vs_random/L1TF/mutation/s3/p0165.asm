.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
mov dl, 89
inc rax
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
mov bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
lea ecx, qword ptr [rdx]
sub rax, -2089384489
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
cmp cl, -89
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
xor di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
