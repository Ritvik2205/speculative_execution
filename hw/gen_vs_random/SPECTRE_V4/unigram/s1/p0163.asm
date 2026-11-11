.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, rbx
sub si, cx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and al, -87
and rcx, 29
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], dx
sub al, al
sub sil, 71
add bl, 71 # instrumentation
adc si, dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
cmovle rsi, rdi
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
cmp bl, dil
add eax, 1936378991
add dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
test cl, bl
sub rbx, rdi
mov dil, dil
cmovb ecx, ebx
cmovno dx, dx
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
sbb al, 95
cmovnb edx, ecx
xchg rdx, rax
cmovnz rcx, rbx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
xor rcx, rax
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sbb di, di
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 70
adc rsi, 82
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or dx, 32
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
cmovnle rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
mov esi, 1115061743
imul sil
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
test edi, ecx
movsx rdx, ax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
