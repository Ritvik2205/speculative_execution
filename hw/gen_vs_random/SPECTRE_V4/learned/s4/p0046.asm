.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1547540200
mov di, 46
cmp dil, -29
cmp al, 75
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
test bl, -116
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dil, -23
adc al, cl
and sil, -84
sub dil, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
adc dil, -48
dec al
or cl, bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or bl, 61
adc bl, -20
xor dl, -66
xchg bx, di
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
not rdx
sub rax, -1680844889
xor edi, 127
adc bl, dl
or al, bl
sub al, -128
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
sbb di, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
