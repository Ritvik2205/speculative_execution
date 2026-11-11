.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
cmovnle rcx, rsi
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
add cl, -75 # instrumentation
sbb edx, 93
sub si, -92
xchg ebx, eax
and cl, -128
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edi
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 59
imul dx, dx
add dl, 59 # instrumentation
cmovno rbx, rcx
add bl, cl
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmovle bx, bx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
mov al, al
sub edi, ebx
mov edx, ebx
movzx edi, cl
cmp dl, sil
add sil, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
add di, 92
cmovno ebx, ecx
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
add cl, -75 # instrumentation
sbb edi, 73
or bl, 111
xor cl, 13
mov rax, -4627568876460436527
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rax
mov al, cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
adc al, -59
add sil, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ecx
inc edi
sub al, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
or rsi, rax
or dl, bl
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
