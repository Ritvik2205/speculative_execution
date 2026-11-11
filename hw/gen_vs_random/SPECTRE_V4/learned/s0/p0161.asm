.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
dec dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
adc rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 3
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
lea rdx, qword ptr [rax + rdi]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
adc bx, -89
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
sub eax, 2030845821
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
cmovnp ecx, esi
cmovb di, di
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
neg ebx
imul rdi, rsi, 57
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 80
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc cl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
test eax, -818909344
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
mul rbx
setnle bl
add di, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
