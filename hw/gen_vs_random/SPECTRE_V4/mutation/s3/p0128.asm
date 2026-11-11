.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -99
movzx dx, dl
cmovnb rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
inc rsi
imul esi, edx, 69
test edx, 573099753
cmovnb ecx, eax
cmovnp rbx, rdx
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
movsx rsi, bl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
add rcx, rsi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
sub esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
add dl, sil
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
mul rbx
cmovo esi, edx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sbb ax, -19255
add bl, bl
cmovnbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
sub ecx, ebx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovnbe rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
inc edx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
adc bl, al
sbb al, 32
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
mul cl
add rdi, rdx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
xor al, 69
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rdi, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
