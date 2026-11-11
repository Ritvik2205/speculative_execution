.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
xor al, 59
or di, ax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 75
dec dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
cmovnl ebx, eax
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg dl, dl
cmp rax, -227205962
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 11
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 26
cmovno ax, ax
cmovs rdi, rdx
cmovbe si, bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
xor edi, 55
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
xchg eax, ecx
sub dl, dl
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
adc dl, dl
cmovb di, di
sbb al, 123
sbb al, 32
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
bt esi, 227
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
imul eax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 66
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and sil, bl
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
