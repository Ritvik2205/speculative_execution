.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
inc edx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
sub esi, ebx
sbb dl, -99
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovnbe ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
cmovnb ecx, eax
add rdi, rdx
sbb ax, -19255
sub ecx, ebx
imul esi, edx, 69
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
add dl, sil
cmovnp rbx, rdx
cmovo esi, edx
cmovnb rdx, rax
xor rdi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
adc bl, al
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
mul rbx
add rcx, rsi
cmovnbe rbx, rdx
add bl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
xor al, 56
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
movzx dx, dl
movsx rsi, bl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
inc rsi
mul cl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
sbb al, 32
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
