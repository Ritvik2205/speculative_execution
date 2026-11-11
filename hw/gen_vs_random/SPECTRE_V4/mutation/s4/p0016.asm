.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
xor dl, dl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
bts rdi, 144
and di, cx
imul si
xor bl, -126
cmp al, -78
or rsi, -5
mov edx, eax
and al, 5
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
btr rcx, rsi
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
movzx rax, bx
mov eax, 1596316323
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add dl, -4 # instrumentation
cmovp ax, cx
xor si, -73
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
xor al, -120
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
adc bl, sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovbe edx, ecx
movsx eax, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
or bx, -33
adc bl, -58
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
xor rbx, -99
mov cl, 14
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
or cx, -74
add dil, -61
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
