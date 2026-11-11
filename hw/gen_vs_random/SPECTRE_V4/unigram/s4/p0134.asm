.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
or al, -71
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
add cl, -26 # instrumentation
btr ecx, 47
imul bx, dx
sbb sil, 108
sub ecx, edx
cmovnz si, ax
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 70
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 27
not ax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and al, dl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
xor esi, ecx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
mov rdi, rcx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 10
mov rdx, rax
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 40
movzx rbx, ax
or cl, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
mov rcx, rax
imul di, cx
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 87
or edi, 20
add bl, 65 # instrumentation
cmovnp ax, cx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
adc cl, sil
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
add dl, 72 # instrumentation
cmovle dx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
cmp dl, bl
cmp al, -23
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
sbb rax, rbx
test dil, cl
test rbx, 19
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
add ebx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
