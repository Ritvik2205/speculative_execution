.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 92
imul rbx, rcx, 37
and rax, rcx
sub ecx, 28
sbb rcx, 99
cmp al, dil
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 20
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
cmovnbe bx, cx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sbb bx, ax
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
