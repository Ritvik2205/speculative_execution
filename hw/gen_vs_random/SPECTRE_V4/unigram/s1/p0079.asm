.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 46
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
sub cl, cl
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 47
adc sil, al
add bl, -109 # instrumentation
sbb eax, -2052726562
mul rbx
cmp dl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 93
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
imul sil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
cmovp di, ax
add cl, 72 # instrumentation
cmovle cx, bx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
adc dl, 56
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 71
add dil, 82
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
cmp dl, dl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
or ax, -15282
cmovnle dx, bx
cmp dl, dl
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 23
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
test rcx, -2118888343
sbb dl, dil
xor dl, 13
imul rsi
add edx, 89
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
add dl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
xchg esi, ecx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
or edi, edx
cmovns dx, dx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 87
sbb dl, -99
movzx edi, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
