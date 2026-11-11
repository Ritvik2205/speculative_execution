.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, sil
and bl, 26
sub di, 31
sbb eax, -984782068
movsx rax, bl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 52
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
sub edi, esi
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
movsx edi, bx
sbb dil, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 90
cmovle rbx, rdx
mov eax, 16
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 13
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and si, 68
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
neg sil
cmovb ecx, eax
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
test cx, dx
and al, -127
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 37
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
mov dil, bl
cmovnbe ax, bx
imul edx, esi, 66
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 21
bt dx, 80
cmovnbe edx, esi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 60
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
xor al, 69
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 29
bt ebx, edi
mov rsi, 86
cmovnp cx, cx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovnb ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
imul eax
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
cmovnbe edi, edx
add rax, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
