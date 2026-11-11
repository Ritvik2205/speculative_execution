.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
inc edx
cmovnbe ebx, eax
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
movsx rsi, bl
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
cmovnp rbx, rdx
xor rdi, rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
cmovo esi, edx
xor al, 29
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sbb al, 32
add bl, bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
test edx, 573099753
add rcx, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
mul cl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmovnbe rbx, rdx
and rdi, -2
mul rbx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add rdi, rdx
sub ecx, ebx
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
adc bl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
sbb ax, -26881
add dl, sil
imul esi, edx, 69
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
sbb dl, -99
cmovnb ecx, eax
sub esi, ebx
cmovnb rdx, rax
inc rsi
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
