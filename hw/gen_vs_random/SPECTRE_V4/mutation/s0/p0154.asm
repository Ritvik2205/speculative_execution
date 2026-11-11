.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
cmovnbe ebx, eax
cmovnb rdx, rax
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sub esi, ebx
adc bl, al
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
cmovnb ecx, eax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
add rdi, rdx
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
cmovnbe rbx, rdx
and rdi, -2
mul rbx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
sbb al, -62
inc rsi
xor rdi, rdx
inc edx
cmovo esi, edx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
imul esi, edx, 69
mul cl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
add dl, sil
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
sbb ax, -26881
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
add bl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
xor al, 69
movzx dx, dl
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
add rcx, rsi
sbb dl, -99
cmovnp rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
sub ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
