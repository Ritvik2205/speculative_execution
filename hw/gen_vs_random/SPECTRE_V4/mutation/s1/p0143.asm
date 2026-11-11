.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -55
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
movzx rdx, cx
or al, al
sub al, 0
mov al, 125
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
imul rcx, rax
or di, 2
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
bt ax, 84
xor bl, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
test eax, -251558852
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
or dl, 71
or dl, al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
imul rdx, rdi
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
sbb dl, -71
cmovbe di, ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
add bl, -18 # instrumentation
cmovs cx, ax
btc edi, edx
sub cl, 78
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
imul eax
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add al, 122 # instrumentation
cmovz si, ax
cmovbe rdx, rcx
cmovnle edx, ebx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
add ax, 65
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
