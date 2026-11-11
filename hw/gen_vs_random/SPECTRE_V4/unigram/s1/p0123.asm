.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
mov eax, 15
xchg al, al
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 87
test ecx, 22
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
xor rdx, 37
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
xor ax, 25554
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
test ecx, 27
adc dl, bl
mov dil, -118
movzx bx, bl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 47
or sil, cl
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add ebx, 3
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
inc edx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
add dil, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdi]
and al, -36
or bl, dl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 98
sbb bl, -94
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 62
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnle eax, edi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 52
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
or ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
