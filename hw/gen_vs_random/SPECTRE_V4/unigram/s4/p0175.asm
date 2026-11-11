.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 96
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rcx]
add dil, dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 79
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
test sil, 6
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
cmp bl, al
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, ebx
sub eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
sbb sil, sil
bts ax, 100
and bl, sil
add sil, cl
not al
cmovnbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xchg rax, rdx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
or bx, -111
movsx rsi, dx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 78
sbb cl, bl
xor ax, 28088
cmovnz edx, ebx
imul bx
mul esi
mov cl, 69
cmovnbe rdx, rcx
or ax, -12775
adc cx, 79
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
and dil, 96
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
sub sil, -36
sbb eax, 1081973675
add bx, 110
imul ecx, eax
cmovns dx, cx
bt eax, edx
cmovz rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
or eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
