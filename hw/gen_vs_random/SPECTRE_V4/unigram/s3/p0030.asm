.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
movsx rdx, cl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
sub ebx, edi
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
imul cl
cmp dx, 43
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
add ecx, 13
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
adc edx, 11
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 10
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
dec bl
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 90
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 100
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 54
test dl, 19
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb edi, ecx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 35
test dil, cl
sbb si, 71
movzx edi, bl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
sub al, 99
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
add bl, 63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 55
mul cl
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
xor sil, dl
or rdi, rsi
add cl, -82 # instrumentation
sbb di, si
xor sil, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
mov sil, sil
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
mov rdi, rbx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 96
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
