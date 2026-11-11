.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bx
xor al, 56
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 72
movzx eax, dl
adc eax, -1513455903
add eax, ecx
imul edx, esi, 59
cmovnz esi, edx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add bx, 110
test dil, 79
cmovp rdi, rcx
cmovz edi, ebx
or esi, 47
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
and dx, 1
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
add dl, 31 # instrumentation
cmovnl si, si
cmovp dx, cx
cmovns ax, ax
sbb al, sil
add bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
cmovnbe rax, rsi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
and rsi, 82
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
add cl, -37 # instrumentation
adc esi, 19
cmovnp ax, di
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
add rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
imul ebx, edx
imul ebx, esi, 27
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
cmovnb dx, dx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
and bl, dl
adc bx, bx
movzx rdi, bx
mul rbx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
sub bl, 17
movzx rdi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
