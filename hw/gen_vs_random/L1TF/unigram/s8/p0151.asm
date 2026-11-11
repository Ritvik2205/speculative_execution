.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
imul edx, edi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
cmovb ecx, edi
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
add bl, 92 # instrumentation
sets sil
sbb ecx, 44
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
add bl, 48 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 65
lea rcx, qword ptr [rdx + rcx + 60]
lea edi, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
