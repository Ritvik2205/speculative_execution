.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs cx, dx
adc cl, 48
movzx rbx, dx
sub dl, cl
test eax, -818909344
neg dl
dec ecx
mul esi
add cx, 45
cmovnle ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
sbb ax, -26881
cmovl rdx, rax
not bx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sbb sil, 108
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmp dl, 48
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
cmovz rbx, rdi
test dl, bl
mul edx
not ax
or bx, -111
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
test rax, -331426050
cmovnz ebx, edi
xchg rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 89
test esi, 39
dec rax
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
sub bl, 17
btc bx, 6
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
cmovnbe ecx, edi
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 34
adc rbx, 47
or dil, 98
cmovnle si, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
or bx, di
bt ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
