.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
or cl, bl
mov dl, 81
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 52
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
adc cl, -66
cmp cl, dl
add al, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmovp rbx, rax
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
xor sil, dl
or ecx, 102
xor ecx, 58
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
btr rax, rax
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
sbb bl, -98
test dl, -81
and dil, -23
cmp rax, 2096656187
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and bl, -30
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
cmp di, -8
neg rdi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and dx, ax
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
cmp ebx, 80
and di, -34
bts bx, di
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 80
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
movzx rdi, cx
or bl, 111
and dil, dl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
add sil, 122 # instrumentation
cmovz si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
