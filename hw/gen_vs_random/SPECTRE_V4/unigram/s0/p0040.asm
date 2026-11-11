.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rcx]
and rcx, -102
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
adc dil, dl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
movzx eax, sil
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
add cl, -42 # instrumentation
adc al, cl
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmovnle rdx, rdx
add bl, -115 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 34
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
cmp dl, 25
imul rcx, rbx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovb eax, eax
cmovnl ax, si
movzx edi, dil
cmovnle edi, eax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
btc di, bx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
sbb si, di
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
cmovnb esi, edi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 35
sub ebx, 71
add dil, 72 # instrumentation
cmovle di, dx
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
neg dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 27
sbb bl, sil
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovb edx, eax
cmovs edi, eax
sbb cl, -104
movzx dx, dl
xor al, bl
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 18
bt cx, 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
