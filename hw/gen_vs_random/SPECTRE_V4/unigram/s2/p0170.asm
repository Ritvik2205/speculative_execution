.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, edi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
add dl, -26 # instrumentation
btr edx, 30
cmp rdx, 15
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
cmovo rax, rcx
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 16
cmovb edx, edi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 100
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
cmovnb dx, dx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
movzx rsi, dx
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xchg edx, ecx
test rcx, -2118888343
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
test rdi, -1876639003
imul eax
add dl, -75 # instrumentation
adc dl, 100
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
imul sil
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 31
inc ebx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
sbb eax, 1081973675
cmovnbe edx, esi
add dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
