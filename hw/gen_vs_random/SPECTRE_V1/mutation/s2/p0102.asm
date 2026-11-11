.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
lea si, qword ptr [rdi + rax]
add bx, -105
cmp dil, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
bts rbx, rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], -58
mul cl
sub esi, -120
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
mov al, cl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
cmovnz rdx, rdi
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 67
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 110
mov rsi, 8418490294875847673
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
