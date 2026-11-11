.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ebx, eax
sub ecx, ebx
add rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
cmovnb rdx, rax
cmovo esi, edx
xor rdi, rdx
xor al, -2
cmovnbe rbx, rdx
cmovnp rbx, rdx
imul esi, edx, 69
and rdi, -2
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
add rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
movzx dx, dl
add bl, bl
inc edx
adc bl, al
sbb al, -47
sbb ax, -19255
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
mul cl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
test edx, 573099753
cmovnb ecx, eax
movsx rsi, bl
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
add dl, sil
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
inc rsi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sbb dl, -99
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
sub esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
