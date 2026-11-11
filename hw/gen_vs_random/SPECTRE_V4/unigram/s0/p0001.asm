.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovnbe eax, edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
test eax, -558243208
or al, 95
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
cmovnb di, di
movzx ax, cl
cmp rcx, 49
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 57
sub ebx, edx
movzx cx, cl
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
sub edx, eax
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
add ebx, 3
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
neg edx
neg dl
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
or rcx, rdx
xchg edi, eax
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
mul cl
add dl, -114 # instrumentation
cmovl cx, si
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
cmp cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
bt esi, eax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
xor esi, 58
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
