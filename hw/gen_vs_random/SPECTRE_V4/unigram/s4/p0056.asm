.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rax
or cx, ax
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
add cx, 10
or sil, 50
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
or al, al
adc eax, -79
xor sil, al
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 25
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
or edx, ebx
sub al, 99
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
cmp cx, bx
test eax, 1880179600
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
sub cl, -74
xor al, 69
add dl, 41
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmovz eax, eax
sbb sil, al
sbb bl, -94
add sil, -75 # instrumentation
adc sil, 67
test al, al
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
or dil, 68
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
cmovnb ecx, edi
and al, -127
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 54
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
movsx eax, dx
test edi, -1249897727
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
