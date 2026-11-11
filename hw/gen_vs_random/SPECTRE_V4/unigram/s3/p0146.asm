.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 118
and al, -36
not ax
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or cx, dx
movzx ax, bl
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
bts ecx, 8
cmovnb esi, eax
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and edx, 27
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 3
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rdx, 60
imul edx, eax, 55
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
test eax, -544019457
adc al, -58
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
inc edi
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
bt si, 65
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
cmovp rcx, rbx
add sil, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
bt ecx, edx
sub dx, 36
cmovb esi, esi
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
cmovnl rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
add dl, bl
cmovz eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add bl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
