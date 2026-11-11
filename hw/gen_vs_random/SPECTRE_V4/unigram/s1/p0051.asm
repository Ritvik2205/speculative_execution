.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, 81
bts rax, rcx
test bx, 24072
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 41
add dl, -75 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or rdx, 1
movzx si, cl
or edx, 0
test dl, 114
add dil, dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
btr rsi, rdi
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
test al, 114
inc dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
sub si, -92
cmp cl, 100
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
adc eax, 1378432629
test dl, sil
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
test rax, -1395313845
sub rbx, 101
bt esi, 70
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
cmp rdx, -49
cmovnp edx, ecx
imul di, di
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rax], eax
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
adc rax, -691707152
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 64
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and di, ax
cmovle rbx, rdi
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
