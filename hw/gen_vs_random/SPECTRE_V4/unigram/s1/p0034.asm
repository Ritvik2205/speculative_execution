.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
cmp al, 114
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
cmovnbe esi, eax
adc rcx, 99
add edx, 66
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax], 65
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 21
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
sub edi, 60
sub bl, 17
add al, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rcx
sub di, 16
xor bl, 93
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and al, cl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add al, 110 # instrumentation
movsx bx, al
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
adc sil, al
sub bl, bl
add rax, 84
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 57
movzx ecx, al
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 13
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
mov rdi, 95
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
add cl, -37 # instrumentation
adc ecx, 76
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
btc rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 75
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
cmovle edx, eax
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
