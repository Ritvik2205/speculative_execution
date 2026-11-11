.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
adc bl, al
cmovnp rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
cmovnb rdx, rax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
xor al, 59
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
cmovnbe rbx, rdx
imul esi, edx, 69
movzx dx, dl
cmovo esi, edx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
add rcx, rsi
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
mul rbx
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sbb dl, -99
movsx rsi, bl
mul cl
sub ecx, ebx
xor rdi, rdx
inc rsi
sbb ax, -26881
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnbe ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
add rdi, rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
inc edx
add bl, bl
and rdi, -2
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
add dl, sil
cmovnb ecx, eax
sub esi, ebx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
test edx, 573099753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
