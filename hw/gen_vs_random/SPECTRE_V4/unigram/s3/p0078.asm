.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
cmp rcx, 23
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 99
mov cl, 94
add rcx, rdx
test eax, -558243208
test bl, sil
xor al, -2
xchg edx, eax
imul cl
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add cl, -117 # instrumentation
cmovs rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
adc bl, dl
and cl, bl
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
adc si, 53
xor al, dl
add ebx, 3
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edi
movzx rax, bl
sub bl, 17
cmovns bx, di
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 77
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and dx, 1
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
cmovnb si, si
adc al, al
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
cmovb eax, edi
bts rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
cmovnl si, dx
cmp sil, sil
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
add dil, al
or ebx, ecx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 9
or ebx, 53
sbb edx, 65
cmp dil, bl
sub ebx, eax
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, di
sub ax, 24441
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
