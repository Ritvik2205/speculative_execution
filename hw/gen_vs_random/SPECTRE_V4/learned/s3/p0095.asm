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
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 80
sbb cl, al
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
cmovl rcx, rsi
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, esi, 27
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
cmovns si, si
or dl, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
and dl, bl
or edx, -127
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
btc bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
movzx rax, bl
sbb cl, -104
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovp rdi, rcx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 84
and si, 68
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 92
cmovs ecx, ecx
and bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
test ebx, 1263899340
and al, -36
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
sbb dl, bl
and ax, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
