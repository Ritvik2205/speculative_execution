.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
cmp cl, sil
xor al, 59
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc bl, dl
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb ax, bx
cmp bl, dl
or al, 96
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add bl, 63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sub rax, rdx
sbb dil, cl
cmovo di, dx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and dl, 15
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
btc di, 12
cmovnb rbx, rax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
cmovb edx, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
add bl, al
sub rsi, 26
imul rdi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 60
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
test cx, ax
and ax, 35
add al, 118
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
movzx eax, dl
adc ax, ax
adc sil, bl
adc ecx, -12
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
