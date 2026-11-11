.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 81
mov rax, -8696242625349627833
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
add ecx, edx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rbx
cmovs eax, ebx
add rdx, 39
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 14
btc esi, 47
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
cmp cl, 68
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
test eax, -558243208
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 90
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 13
adc bx, -89
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
cmovnbe rdi, rbx
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor dl, cl
bts edx, edx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
or sil, bl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rsi]
imul dx
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
cmovnb esi, ecx
bt eax, esi
xor edi, 41
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add sil, 110 # instrumentation
movsx cx, sil
and dx, 1
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 60
add cl, -117 # instrumentation
cmovs rbx, rdx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 12
cmovnle rax, rax
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
