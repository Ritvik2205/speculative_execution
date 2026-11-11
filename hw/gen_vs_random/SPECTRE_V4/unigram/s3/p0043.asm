.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, 28
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sbb edx, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
adc rax, -827748523
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
mul rbx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
movzx ecx, cl
xchg dil, sil
movsx esi, di
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 34
imul dx
and al, 49
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmovnz rsi, rdi
btc rdi, 99
add cl, -62
add edx, 89
mul rdi
sbb cx, 106
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rbx, 63
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and al, sil
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
or cl, cl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
xchg cx, cx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
mov rdx, -3284511739993892328
and rsi, 0
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
mov sil, 60
add al, -67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
cmp dil, al
movsx eax, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
