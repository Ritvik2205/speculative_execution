.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 80
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
cmovns rbx, rax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdx, 89
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
cmovle eax, esi
sub cl, sil
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 30
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
imul rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
imul dl
cmovns bx, dx
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
mov al, 85
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], bx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, edx
cmovnbe bx, si
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
btr dx, cx
btc bx, 95
neg dl
cmovnp ax, di
xor ecx, edx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add dx, -90
inc rcx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 82
add al, 72 # instrumentation
cmovle ax, dx
bt ecx, eax
movsx edx, ax
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and dl, cl
bt ebx, ecx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
