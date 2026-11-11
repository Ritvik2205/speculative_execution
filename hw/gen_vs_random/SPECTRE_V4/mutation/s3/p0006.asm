.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rdx, rax
movsx rsi, bl
mul rbx
inc edx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
imul esi, edx, 69
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test edx, 573099753
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
add bl, bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
xor al, 29
xor rdi, rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rdi, -2
add rcx, rsi
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
movzx dx, dl
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
inc rsi
sbb al, 32
cmovnbe ebx, eax
adc bl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmovnp rbx, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sub ecx, ebx
sbb dl, -99
sbb ax, -19255
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovo esi, edx
cmovnbe rbx, rdx
add dl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
cmovnb ecx, eax
add rdi, rdx
sub esi, ebx
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
