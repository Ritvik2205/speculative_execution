.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
cmovnbe ecx, ebx
or ax, 48
test rsi, 56
cmovl dx, ax
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
or dl, -26
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and dl, 24
or sil, -47
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
adc sil, 111
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
xor bl, -126
xor cl, dl
dec cx
btc ebx, 45
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
bts rcx, rsi
movsx rsi, al
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
and al, al
cmovnz edx, eax
or al, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
and cl, dil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
test rsi, 14
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 93
add cl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
movsx cx, cl
cmp sil, -100
add al, 111 # instrumentation
cmovno eax, ebx
xchg cl, al
imul eax, ecx
cmp bl, -79
or bl, -35
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
bt ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
