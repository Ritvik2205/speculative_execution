.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -53 # instrumentation
dec bx
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rsi, rax
cmovs ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
movzx ebx, bx
test sil, 29
jmp .bb_0.1
.bb_0.1:
add cl, 88
bts ebx, esi
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
bt dx, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
or cl, 105
lea dx, qword ptr [rsi + rdi + 47468]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 105
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
