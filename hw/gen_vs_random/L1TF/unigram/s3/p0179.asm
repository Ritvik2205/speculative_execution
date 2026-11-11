.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, sil
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 93
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
or bl, dil
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 44
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edi
add bl, 15 # instrumentation
cmovb ecx, ecx
lea rbx, qword ptr [rax + rdx + 44]
lea rbx, qword ptr [rsi + rsi + 27]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
