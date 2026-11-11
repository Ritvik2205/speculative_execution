.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -98
add al, dl
cmovnle rdx, rdx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
adc bl, al
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
xor di, dx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
sbb eax, 1482884079
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
inc rsi
test rdi, rbx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], esi
cmovs rbx, rbx
xor si, si
sub dx, -12
cmovnp rbx, rcx
add al, -97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
cmp cl, dl
or dx, si
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and dl, bl
neg si
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
inc dl
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
sub rax, -1881584175
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 70
add al, 66 # instrumentation
cmovp edx, edx
not di
imul di, ax
imul rdx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
adc sil, 111
cmp bx, 113
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
adc edi, -83
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
cmp dl, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
