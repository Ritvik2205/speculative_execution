.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 29
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
test rdi, -795635070
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and esi, 126
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and eax, 1913354318
cmovbe dx, di
imul dx
bts di, 30
dec dl
test al, 18
mov dl, cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
inc cl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
or al, al
add al, 40
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
inc cl
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
adc al, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or di, 2
imul esi, esi, 60
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
cmp al, 116
or cl, 66
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
xor rsi, -102
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
