.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul esi, edx, 69
movsx rsi, bl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
inc rsi
sbb al, 123
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
mul rbx
movzx dx, dl
cmovnbe ebx, eax
add rdi, rdx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovo esi, edx
adc bl, al
cmovnb rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sbb dl, -99
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
test edx, 573099753
inc edx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
add dl, sil
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -26881
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
xor al, 102
cmovnb ecx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sub ecx, ebx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
mul cl
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
add rcx, rsi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rdi, -2
cmovnbe rbx, rdx
sub esi, ebx
add bl, bl
cmovnp rbx, rdx
xor rdi, rdx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
