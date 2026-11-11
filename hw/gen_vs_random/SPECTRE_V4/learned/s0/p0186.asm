.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 38
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
bt dx, cx
test ax, -5170
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
sbb dil, 67
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and dl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmovp ax, si
sbb cx, 71
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
bts rsi, rax
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
or dl, bl
cmovl rdi, rax
not si
and al, dil
test bl, al
cmovnbe rbx, rcx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmovnle eax, edi
btc dx, 119
xchg rsi, rcx
xchg rsi, rdi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ebx, edx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
cmovnbe si, bx
cmp ax, 23131
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
adc bl, 89
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 87
movzx bx, al
inc si
test ebx, -595096626
cmovs rbx, rdi
not bx
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
