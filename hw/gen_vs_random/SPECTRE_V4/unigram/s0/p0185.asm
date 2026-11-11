.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and dx, 1
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
sbb dl, -99
imul cx, bx, 16
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
sbb eax, -984782068
add eax, -1796699558
or esi, ebx
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 52
btr rdi, rcx
test dx, 83
cmovnl rdi, rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 38
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rax]
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
add dl, -75 # instrumentation
adc dl, 94
bts ebx, 22
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, ecx
sbb al, cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
imul ebx, eax
sbb al, -101
xchg ecx, edx
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
cmovl rbx, rax
bt ebx, eax
sbb edx, edi
cmovo ax, di
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
cmp edi, -104
cmovo dx, ax
add dl, al
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
cmp sil, bl
add dl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
sbb cl, 19
and ax, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
