.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmovnp rbx, rdx
sbb ax, -19255
cmovnb ecx, eax
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
movzx dx, dl
cmovnbe ebx, eax
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
inc rsi
sub esi, ebx
sub ecx, ebx
and rdi, -2
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
sbb al, 32
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
add dl, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
adc bl, al
test edx, 573099753
inc edx
add rdi, rdx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmovnb rdx, rax
add rcx, rsi
imul esi, edx, 69
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
mul rbx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
add bl, bl
mul cl
sbb dl, -99
cmovnbe rbx, rdx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
xor rdi, rdx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
cmovo esi, edx
movsx rsi, bl
xor al, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
