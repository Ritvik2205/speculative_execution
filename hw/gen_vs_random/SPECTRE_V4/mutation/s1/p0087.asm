.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, bl
test bl, -116
cmovno ecx, edx
sbb rcx, rax
cmovnb rbx, rax
or al, -47
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
cmovz ebx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovnb di, bx
or cx, -74
cmovl eax, edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
mul al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmp esi, 123
cmovbe edx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor cl, dl
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
sub cl, -73
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
sub eax, -529389957
cmp bl, al
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
or dil, sil
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
or ecx, 102
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
add sil, -18
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovnle rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
cmovnbe rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
xor ax, bx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
not rbx
add dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
