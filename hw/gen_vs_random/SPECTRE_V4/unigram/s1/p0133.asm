.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
xor al, bl
or ax, si
mov ebx, edi
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
cmp sil, dl
adc sil, dil
adc rcx, -99
imul di, di
sub cl, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
bswap rax
btr esi, ebx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
or rdi, -41
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
xor rsi, rbx
imul sil
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
mov ebx, 817819255
xchg esi, esi
bts rdx, rax
sub ax, dx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
movsx ebx, di
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 87
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 64
mul ax
or rax, rsi
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
sub dl, dl
sub dl, 107
bts ax, cx
imul dil
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
cmp al, sil
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
sbb al, 57
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
