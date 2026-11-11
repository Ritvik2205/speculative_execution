.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovnbe rbx, rdx
and rdi, -2
sbb al, 32
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
adc bl, al
cmovnp rbx, rdx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
mul rbx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
movzx dx, dl
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
imul esi, edx, 69
movsx rsi, bl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
sub ecx, ebx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
inc edx
xor al, 69
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
sbb ax, -19255
cmovo esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add bl, bl
inc rsi
cmovnb ecx, eax
add dl, sil
mul cl
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmovnb rdx, rax
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
sub esi, ebx
xor rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovnbe ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
add rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
