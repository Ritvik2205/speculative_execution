.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 1
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
or eax, edi
sbb ax, bx
or cx, 59
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
movzx edi, cl
xor dil, sil
or di, di
and al, dl
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
inc cl
cmp dil, cl
adc dx, cx
movzx rax, dx
or dl, dil
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
dec rax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
movzx edx, bx
and al, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 98
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], ax
add al, cl
sub sil, dl
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and edx, 58
test al, -85
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
cmp sil, dl
cmp ecx, 76
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
adc rbx, 60
or ecx, edx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
add al, -7 # instrumentation
btc dx, cx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
bts rdx, 11
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
