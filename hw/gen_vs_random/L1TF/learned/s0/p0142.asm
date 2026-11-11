.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
add cl, dl
lea ecx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
xor rbx, 85
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
mov rsi, 97
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
setle cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 80
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
