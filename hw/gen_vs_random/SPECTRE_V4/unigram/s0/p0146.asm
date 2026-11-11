.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
add rdi, -94
adc al, 69
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 63
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
cmp di, 40
or ax, -15282
cmovnb edx, edi
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
or bl, 34
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 52
adc esi, 90
sbb bl, cl
mov ecx, 17
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub dl, al
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
add al, 5
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
movzx bx, bl
add cl, bl
test cx, 10
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 73
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
cmovs si, si
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 34
bts ebx, 22
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 76
test di, 28
mov rbx, 9101099553822202722
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
cmovnb eax, ecx
test bl, 0
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
