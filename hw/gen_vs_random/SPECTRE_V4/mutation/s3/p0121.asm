.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
xchg ax, ax
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
movzx dx, al
not eax
or rax, rbx
bts rdi, 49
or ebx, -78
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add al, -82
cmovo cx, bx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
bswap edi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
xchg rdi, rax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sbb cx, 106
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
sub al, cl
bts ax, 159
sub dl, dl
cmovnz rdx, rcx
cmovb edi, eax
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
xor rax, 1049851782
cmp eax, 64
test di, -19523
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
mov cl, bl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
add al, 66 # instrumentation
cmovp ebx, ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
