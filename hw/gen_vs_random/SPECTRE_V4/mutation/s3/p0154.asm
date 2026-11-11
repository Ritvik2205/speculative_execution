.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
xor al, 59
add dl, sil
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
inc rsi
xor rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
sbb ax, -19255
test edx, 573099753
sub esi, ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sub ecx, ebx
add bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovnb ecx, eax
cmovnp rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add rcx, rsi
cmovnbe rbx, rdx
add rdi, rdx
mul cl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
imul esi, edx, 69
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
movsx rsi, bl
cmovnbe ebx, eax
adc bl, al
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
movzx dx, dl
cmovnb rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
inc edx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
mul rbx
cmovo esi, edx
sbb al, -101
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sbb dl, -99
and rdi, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
