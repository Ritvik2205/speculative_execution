.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
imul rcx, rcx
cmp rax, rdi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
bt ecx, 135
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
cmovnb esi, edi
or dl, dl
test edx, 1479885278
btr esi, 227
or sil, sil
cmovnbe rbx, rsi
mov rax, rax
btr dx, si
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
btr rax, rsi
add bl, -59
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
btc edx, ecx
add dil, dil
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
neg rdx
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
sbb rbx, 20
sbb rdx, 6
add al, dil
adc edx, -86
cmp dl, 23
mov al, sil
mov rdi, rdi
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
xchg rbx, rdx
movsx di, dil
neg rdi
adc dl, cl
sub al, cl
inc ecx
cmovnb eax, ebx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
