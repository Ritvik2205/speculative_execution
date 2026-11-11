.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
sub ax, 25338
cmovnp ax, bx
xchg dil, bl
mul dx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
not rdi
add edx, 89
bt edi, 78
add al, 111 # instrumentation
cmovno ebx, edi
sbb dl, -106
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
or al, dl
xor dx, -43
test bx, 24072
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
cmovnz rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
xor rbx, -99
imul sil
cmovnp cx, bx
not esi
imul rcx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
adc rax, rbx
test esi, esi
sub sil, sil
add al, 89 # instrumentation
cmovnle ax, di
bts esi, esi
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 46
sbb dx, 2
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
or esi, 32
add bl, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
cmovo bx, ax
or si, 85
neg rcx
adc edx, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
