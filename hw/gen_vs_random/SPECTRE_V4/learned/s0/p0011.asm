.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
add al, -32
sub cl, dil
sub al, cl
xor si, di
add al, -1
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 19
cmovbe bx, di
adc bl, 97
sbb al, 57
and bl, cl
or ax, 57
dec sil
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
adc al, bl
xor sil, 90
and cl, -118
adc sil, bl
add dil, sil
and al, 5
and cx, -117
mov dil, 53
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
cmp rax, 1097504565
not dil
cmp dil, cl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
