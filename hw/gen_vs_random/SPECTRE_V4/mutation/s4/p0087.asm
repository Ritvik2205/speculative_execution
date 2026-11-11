.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 25338
cmovp edi, ebx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and al, bl
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
test al, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
cmovnz rdi, rcx
mov bl, cl
cmovnz rbx, rdx
btr edi, 54
btr ax, 109
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
movzx eax, sil
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
cmp eax, -813838876
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and esi, 61
adc al, 41
cmovz rbx, rdx
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmovnle rcx, rcx
sub si, bx
inc dl
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
imul dl
add al, cl
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
xchg cx, ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
bts edx, 116
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and bl, dl
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmovb ebx, ecx
add bl, al
and eax, -1145483375
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
