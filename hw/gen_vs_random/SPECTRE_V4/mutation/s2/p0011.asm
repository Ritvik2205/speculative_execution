.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
sbb ax, -26881
add rcx, rsi
and rdi, -2
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
mul cl
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
add dl, sil
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
sub ecx, ebx
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
add bl, bl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmovnb ecx, eax
xor al, 102
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sub esi, ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sbb al, -101
inc edx
cmovnp rbx, rdx
cmovo esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
imul esi, edx, 69
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
cmovnb rdx, rax
adc bl, al
xor rdi, rdx
cmovnbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
test edx, 573099753
add rdi, rdx
mul rbx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
inc rsi
cmovnbe rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
