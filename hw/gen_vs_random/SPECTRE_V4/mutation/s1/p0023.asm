.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, -2
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovo esi, edx
add rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
sbb al, -47
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
movsx rsi, bl
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
cmovnb ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
sbb ax, -19255
cmovnp rbx, rdx
add bl, bl
movzx dx, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
inc rsi
xor rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
imul esi, edx, 69
cmovnb rdx, rax
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnbe rbx, rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
mul rbx
sbb dl, -99
xor al, 56
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
sub esi, ebx
sub ecx, ebx
add rdi, rdx
test edx, 573099753
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
add dl, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
mul cl
inc edx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
