.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx eax, sil
add ebx, esi
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 24
xor bl, cl
cmovle si, si
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
mul ax
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 47
imul rbx
xor cl, -54
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovb ebx, esi
movzx eax, ax
or cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
cmp cl, al
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 32
sbb bx, 89
imul dx
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
imul ax, cx
xor dl, 81
mov ebx, 70
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
imul di, cx
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
sbb sil, 108
imul eax
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
btr dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
sub al, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
