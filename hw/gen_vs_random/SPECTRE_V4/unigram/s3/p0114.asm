.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 83
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 10
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
mov bl, al
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
cmovp ebx, ecx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
adc sil, -2
cmovbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
sbb al, -3
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
cmovs esi, ecx
or edi, -64
sbb bl, -79
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
movsx bx, sil
adc al, al
imul ecx, eax, 87
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
imul bx, si
cmovb ebx, ecx
or esi, 32
add al, -55
or dl, 71
cmovbe esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 29
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
mov dil, 62
mul rdx
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
sub al, 69
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
cmovnz rsi, rsi
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
xor eax, 1185843233
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
