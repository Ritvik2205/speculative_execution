.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
cmovnb esi, edx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
neg rsi
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmovb bx, ax
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
add dl, al
adc rdx, rax
sbb cl, al
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 79
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 37
test bl, 0
sbb ebx, esi
cmovnb rdx, rsi
bt esi, edi
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
and bl, 26
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
movzx ecx, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor dl, 17
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, cl
mov bl, bl
or bl, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
xchg dl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
movsx rsi, cx
xchg edi, esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
bts edi, 167
test ebx, 1263899340
cmovs rbx, rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
