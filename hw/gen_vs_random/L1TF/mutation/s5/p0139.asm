.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, di, -32
xor al, 38
btr ebx, eax
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc dl, al
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
cmovl rcx, rdi
add al, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
lea rdi, qword ptr [rbx + rsi + 20302]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
btr edi, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
