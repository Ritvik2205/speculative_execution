.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
mov dl, 89
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
inc rax
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
sub rax, -2089384489
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
mov bl, dl
cmp cl, 57
xor di, cx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
