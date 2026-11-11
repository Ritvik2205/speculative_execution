.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
or dl, cl
movzx dx, bl
btc cx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
movsx rdx, cl
mov ax, dx
sbb al, 123
or rdi, rdx
sub di, 24
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmovz esi, ebx
or dl, bl
adc al, 36
cmovnb esi, ecx
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
adc ecx, -12
test bl, bl
add bl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
xchg edx, eax
test bl, 24
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
cmp bl, bl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
cmovle rdi, rdx
sub al, 119
bts rsi, rsi
xor dl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
