.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
bts rsi, 236
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 57
cmovs rbx, rax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 20
cmovnle rdx, rsi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
btc rax, rax
and bx, si
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 12
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
or eax, ebx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
add dl, -40 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 79
not dl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 81
xchg cl, dl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
neg bx
cmovno rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
cmp al, -44
sbb dil, 45
adc dil, cl
cmp al, 98
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
sub cl, sil
xor al, dil
add cl, -69 # instrumentation
adc al, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
sub dx, bx
cmovnz ax, dx
cmp dil, al
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
cmp rdi, 28
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or si, ax
bt ax, 248
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
imul di, si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
