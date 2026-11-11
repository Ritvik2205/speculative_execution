.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
test eax, 1561062795
xor si, ax
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add al, al
sub al, 99
xchg ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and si, 68
or ax, -15282
mul rbx
cmovnl rdx, rdx
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
btc di, 72
sbb bl, 57
or cl, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
btc si, 90
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
xor dil, cl
adc dl, cl
sub al, cl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
test rcx, -2118888343
sub cl, -74
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
sub dl, dil
or edi, 55
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
adc bl, 89
or sil, cl
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 86
test cl, dil
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
cmp bx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
