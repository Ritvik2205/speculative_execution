.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -818909344
mov dl, dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
cmovns rsi, rax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 51
test edx, 573099753
setnz dil
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
cmovz eax, ecx
cmovnle cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 1
imul rsi, rax
or ax, -15282
sub cl, cl
sbb dl, dl
xor cl, al
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
sbb cl, al
adc bl, dl
sbb cl, bl
imul rdi, rsi, 57
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
lea si, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
test eax, -818909344
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
mul rbx
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
mov edi, -1544998000
sub dl, dl
cmp cl, cl
sub dl, al
xor al, 102
sbb dx, si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
sbb dl, bl
add ax, -13169
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
