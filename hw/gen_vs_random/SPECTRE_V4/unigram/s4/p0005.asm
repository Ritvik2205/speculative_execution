.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ebx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
not ax
bswap rbx
sbb edx, eax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
test esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
xor bl, cl
cmovns rbx, rcx
sub cl, -74
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 57
xor cx, 23
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
or eax, 2007177863
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
bt ax, 17
or sil, dil
not dx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
cmp rsi, 7
and si, 68
sbb bl, dil
test bl, dil
sbb ecx, 52
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ecx, ebx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
bt eax, ecx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
cmovle rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
add dx, -90
cmovnp bx, cx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
cmovnb rcx, rsi
cmovle rdi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
bt edi, 19
btr dx, di
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovle rdi, rsi
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 26
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
