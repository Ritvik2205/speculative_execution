.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rsi, -115
adc ebx, 117
xor al, 102
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
btc ax, dx
cmovnz di, dx
xor eax, 181978569
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
or dx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
inc edi
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
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
or al, 109
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
