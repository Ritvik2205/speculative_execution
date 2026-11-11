.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ax, di
cmp bl, cl
test rdx, 37
imul eax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
cmovb ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
cmp rax, -1102558854
cmovns cx, cx
add cl, 81
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 65
bt eax, ebx
bt eax, edx
xchg rax, rbx
bt ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
sbb dil, dil
and ax, 35
mul ax
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 74
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rax
test sil, 96
sub eax, 2030845821
cmovb rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
or sil, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
sbb al, dil
sub rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 33
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
add al, -71 # instrumentation
adc al, cl
and cl, 58
cmovnp dx, si
and rcx, -102
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
add dil, 16
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
sub ebx, 94
add dl, 31 # instrumentation
cmovnl bx, bx
imul rdi
movzx di, dl
cmovnl bx, ax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
