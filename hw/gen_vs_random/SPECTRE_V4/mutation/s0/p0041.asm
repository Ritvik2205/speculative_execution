.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
imul rdx, rbx, -19
bts ecx, ebx
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
bswap rcx
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
movzx edi, si
dec al
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
add edx, 89
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
add dl, 122 # instrumentation
cmovz dx, bx
bt rbx, rax
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
inc cl
bt si, 18
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
adc bl, 97
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
xor rbx, -99
mov cl, -38
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
or cx, 23
add dil, 75
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
