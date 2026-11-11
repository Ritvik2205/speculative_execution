.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
sbb al, 32
inc rsi
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sbb ax, -26881
cmovnbe rbx, rdx
cmovo esi, edx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
movsx rsi, bl
inc edx
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
add bl, bl
xor al, 29
sbb dl, -99
sub esi, ebx
add rcx, rsi
adc bl, al
imul esi, edx, 69
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmovnb rdx, rax
mul rbx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
sub ecx, ebx
xor rdi, rdx
movzx dx, dl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
test edx, 573099753
add dl, sil
mul cl
cmovnbe ebx, eax
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmovnb ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
add rdi, rdx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rdi, -2
cmovnp rbx, rdx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
