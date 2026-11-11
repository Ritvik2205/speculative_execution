.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 87
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test al, 18
add bl, dl
and dil, dil
test sil, dl
and bx, 27
and bl, -119
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
mov dil, dl
xchg ebx, edx
and al, -118
mov al, 9
test bl, 87
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
or bl, al
mov cl, al
sub eax, -494922880
btc rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
adc sil, dil
xor al, sil
adc al, 116
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
cmp rax, 1097504565
mov bl, dil
and cl, -118
and cl, 126
test cl, -10
adc cl, dil
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
