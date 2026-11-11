.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 69
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -26881
test edx, 573099753
imul esi, edx, 69
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, ebx
add bl, bl
cmovo esi, edx
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
sbb dl, -99
not dx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, eax
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
not bx
cmp dl, al
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
test eax, -544019457
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
imul cl
or al, 95
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor dl, dl
test ebx, -595096626
cmovs rbx, rdi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
