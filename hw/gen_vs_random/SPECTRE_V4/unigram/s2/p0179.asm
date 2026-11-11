.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 70
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
mov sil, sil
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
bts ebx, 22
cmovs edx, ebx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 17
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
adc al, dl
sub dil, -10
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
sbb al, -101
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
imul cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rsi, 15
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
cmovle ax, cx
cmovnle rcx, rcx
cmp sil, 88
xor si, 51
neg al
cmp ecx, 26
add dl, al
xor sil, 56
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
or dx, di
adc al, 69
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmp ebx, 51
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
add cl, 110 # instrumentation
movsx si, cl
sub dl, bl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 21
mov cl, cl
not dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
xor di, -43
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
