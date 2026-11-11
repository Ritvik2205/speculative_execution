.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, -117
btc rsi, 77
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
or bl, dil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
add dl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
dec ax
cmovnbe si, di
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
xor dl, -66
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 15
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 48
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 44
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edi
movsx ebx, dl
add di, di
mov bl, dil
sub dl, 107
xor eax, 365940537
bts ax, cx
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
neg rdi
movsx dx, dil
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bts di, ax
and dil, -120
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 41
or al, al
cmovbe si, ax
mov bl, cl
and dil, -120
and eax, eax
imul dx, ax
bts rdi, 49
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdi
adc rbx, rsi
imul rsi, rdi
sbb dx, 2
and rbx, 0b1111111111111 # instrumentation
test rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
