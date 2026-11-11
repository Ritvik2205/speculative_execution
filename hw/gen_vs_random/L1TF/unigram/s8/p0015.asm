.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
lea bx, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 7
mov dil, 70
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
adc sil, sil
or cl, bl
imul sil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
or bx, bx
add dil, dl
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
