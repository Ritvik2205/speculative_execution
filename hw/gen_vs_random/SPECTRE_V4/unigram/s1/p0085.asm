.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
movsx ecx, dx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add bl, 63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and dl, al
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 77
cmovs ax, ax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
bt ecx, edi
cmp bl, 13
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
cmp dl, 87
xchg rbx, rdi
mul esi
and bl, al
add cl, -37 # instrumentation
adc edx, 81
add dl, -94 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
or cl, 92
movsx rax, si
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
cmovnbe si, ax
cmovnle di, di
cmovp rbx, rcx
cmovnbe rsi, rdi
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovl rax, rcx
add di, -74
xor bl, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 52
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
cmovnp edi, esi
cmovp ax, cx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and di, 98
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 10
add eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
mov dil, bl
cmp dx, 12
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
