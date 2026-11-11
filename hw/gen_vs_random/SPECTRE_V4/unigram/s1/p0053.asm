.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, di
adc sil, dl
cmovnle rax, rax
cmovle edx, edi
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
mov sil, sil
and rdi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdi]
movzx cx, cl
xchg di, si
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
sub cl, 116
cmp al, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
sub rdi, 67
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
xor cl, bl
and sil, bl
bt eax, edx
test ecx, 7
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
not esi
movsx edx, cx
xchg dx, si
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 70
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rcx]
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
adc al, dl
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
adc esi, 90
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
add sil, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
xor bl, al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or sil, 73
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
