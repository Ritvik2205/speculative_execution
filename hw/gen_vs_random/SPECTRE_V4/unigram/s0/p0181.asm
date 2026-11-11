.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rax, rdx
movsx eax, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 63
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
not rsi
cmovnbe rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
cmovnz rsi, rcx
sub sil, al
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 54
cmovno edi, esi
add dl, -91 # instrumentation
cmovl rsi, rdx
cmovnb rax, rbx
dec di
movzx edi, al
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
or dl, al
or si, 0b1000000000000000 # instrumentation
bsf ax, si
add dl, al
sub al, al
adc rdx, -90
imul esi, eax
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
cmp eax, -813838876
or edx, -128
neg ebx
add dl, al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 55
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
cmovnl cx, si
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
or bl, 61
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
imul edx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 9
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
cmp bl, bl
cmovo edx, esi
adc cl, 111
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
adc rdx, -90
btr rdi, rdi
add al, 27 # instrumentation
mov bl, cl
mov edx, -950755477
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
