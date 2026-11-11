.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -101
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 80
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
cmovl rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
bts esi, 241
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
cmovbe si, dx
sbb cl, -104
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
adc dx, 81
cmovz edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovnb dx, dx
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
cmovnbe rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
movzx rax, cl
xor di, -43
sub dl, bl
setnl dil
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdi, -2
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
test al, 66
or bx, -111
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
imul rsi, rdi
cmovnbe di, cx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
btr di, 16
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
