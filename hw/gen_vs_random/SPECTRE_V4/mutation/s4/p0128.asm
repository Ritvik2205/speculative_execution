.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, al
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
xor al, 59
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sub ecx, ebx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
sbb al, -101
cmovnb rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
sub esi, ebx
movsx rsi, bl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
add dl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
add bl, bl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdi, -2
test edx, 573099753
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
add rcx, rsi
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rdi, rdx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovnb ecx, eax
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
imul esi, edx, 69
cmovo esi, edx
cmovnbe ebx, eax
cmovnbe rbx, rdx
inc rsi
sbb dl, -99
movzx dx, dl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
mul cl
xor rdi, rdx
sbb ax, -19255
cmovnp rbx, rdx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
