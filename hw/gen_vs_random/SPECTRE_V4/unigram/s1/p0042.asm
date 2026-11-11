.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 73
sub ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 98
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
add eax, -1796699558
add cl, 8 # instrumentation
adc sil, cl
test dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
test edx, 573099753
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 42
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
add cl, -42 # instrumentation
adc bl, sil
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 78
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
or dl, 56
not di
cmovp bx, dx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add ecx, 35
cmp sil, sil
cmovnb di, di
cmp sil, al
xchg rcx, rdx
movzx rdi, dl
cmp ax, -15409
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
cmovp esi, edx
cmovnz edx, ecx
mul cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
cmp dx, 5
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
