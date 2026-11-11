.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
cmovno dx, ax
adc rdi, 82
add cl, cl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rax
test bl, dil
cmovl rdi, rbx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
sub rdx, 53
sub dx, ax
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnz rax, rcx
imul dx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 95
cmovo rax, rdi
cmovnle rax, rbx
sub rdi, -34
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
cmovo ax, cx
add dil, dil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or eax, 1470564945
xchg ecx, edx
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
xor rax, rsi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add dl, -82
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
xor si, -73
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
sub ax, 8246
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
or rcx, 51
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test bx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
