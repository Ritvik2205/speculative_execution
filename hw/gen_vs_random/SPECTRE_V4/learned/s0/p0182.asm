.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
or bl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
cmp edx, 79
cmovnb ecx, ebx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc dx, 16
sbb al, 123
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
cmovs dx, bx
cmovs rax, rcx
btr bx, cx
cmovs rsi, rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 30
cmovns ecx, eax
sbb dl, dl
sbb bl, 57
mov rsi, rcx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rdi, rcx
adc bx, -89
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
or dl, 56
xor ax, 28088
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
test dl, 19
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
sub dl, dl
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
xor eax, 181978569
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
