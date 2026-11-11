.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rdi, rbx
sub dl, 43
sub sil, dil
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 69
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
not rax
inc sil
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
cmp cl, 35
cmovle ecx, esi
sub edi, ebx
cmovnb ebx, edi
neg rdx
add cl, -37 # instrumentation
adc ebx, 12
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 81
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
add bl, cl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 5
cmovnp eax, edx
cmovno ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
xor al, -2
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
adc cl, 96
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 41
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
or bl, 82
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 34
add bl, -18 # instrumentation
mov rbx, rax
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
imul dl
or eax, 1802312508
test al, cl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 96
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and al, dl
or al, sil
mul dl
adc edx, 37
sbb rbx, rcx
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
