.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, al
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rdi
cmovs rcx, rsi
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
adc ecx, 93
or rax, 699028911
lea edi, qword ptr [rdi + rdx + 2]
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
sub dl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
xor ecx, 88
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 31
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
lea ebx, qword ptr [rsi + rbx + 65254]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
