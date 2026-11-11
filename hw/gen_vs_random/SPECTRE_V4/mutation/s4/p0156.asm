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
bt si, 114
movzx edi, sil
mov rdx, -3088288992777791879
and ax, 62
xor cx, -80
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
cmp eax, 2
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
adc rax, 310915511
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
sub edi, eax
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
adc al, 116
xchg al, bl
cmovnz rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
movsx rcx, cl
add al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
