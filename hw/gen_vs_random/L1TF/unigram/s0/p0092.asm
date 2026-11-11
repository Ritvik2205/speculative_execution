.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rcx + rbx + 88]
setnb bl
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 68
bts ebx, 27
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
cmp cx, 79
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 79
mov eax, 32
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
xor bl, al
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
