.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
mul ax
cmp rdx, 67
sbb sil, bl
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 81
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
inc eax
movzx ebx, dl
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 69
and bx, 95
add dl, -114 # instrumentation
cmovl bx, si
and rdx, 38
or edx, -127
cmp bx, 37
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ecx
cmp dl, 97
cmovp edi, edi
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
cmovnbe rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 92
add cl, -37 # instrumentation
adc ebx, 87
add sil, dl
xor al, 56
neg rdx
or ecx, 6
xor bl, 93
add cl, 51
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and cl, 58
neg al
xor dl, 17
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], edi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
