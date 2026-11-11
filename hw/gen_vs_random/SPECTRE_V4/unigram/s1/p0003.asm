.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and ebx, -122
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
inc rdi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 42
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 96
sub dl, dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
adc al, bl
btc rax, rsi
cmp cl, bl
cmovo eax, ebx
add sil, 77 # instrumentation
cmovno si, di
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
or cl, 66
adc al, bl
dec bl
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
sbb dil, 40
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rsi, 0
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 99
cmp rax, -2096157586
btr ax, ax
adc rax, 1873854064
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
add edx, 89
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
sbb bl, 121
sub si, di
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
movzx cx, cl
xchg dl, al
btc di, 107
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
