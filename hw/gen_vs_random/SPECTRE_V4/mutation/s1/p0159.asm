.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, dl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
imul esi, edx, 69
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
sbb ax, -26881
sub esi, ebx
mul cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
mul rbx
and rdi, -2
movsx rsi, bl
add dl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
add rcx, rsi
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
adc bl, al
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
inc edx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
sbb al, -101
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
inc rsi
test edx, 573099753
add rdi, rdx
cmovnb rdx, rax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
cmovnp rbx, rdx
xor al, 69
xor rdi, rdx
cmovnbe ebx, eax
cmovnb ecx, eax
cmovnbe rbx, rdx
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
sub ecx, ebx
sbb dl, -99
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovo esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
