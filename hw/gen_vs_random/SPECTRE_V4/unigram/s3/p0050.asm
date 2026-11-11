.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
sub cl, -51
and rdx, 0b1111111111111 # instrumentation
test cx, 52
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
bts ax, 155
bts ebx, 197
cmp al, 116
xor dl, al
sbb eax, 1482884079
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
neg dil
and cl, -118
add edx, 89
bt di, 98
add cl, -106 # instrumentation
cmovno rcx, rax
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
cmp dil, 101
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
and al, cl
adc esi, 97
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
btc rax, rax
adc dl, 89
adc rbx, 60
movsx ecx, di
xor bl, -126
cmovbe si, bx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
mov al, 125
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 74
mov sil, 57
neg edx
not rax
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
inc rcx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
