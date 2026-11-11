.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
inc edx
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, edi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmp bx, 91
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], ax
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
cmovle ax, ax
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
cmp al, -23
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
test dil, dl
or cl, cl
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
or al, 109
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
add al, 56 # instrumentation
cmovle rdi, rax
cmovnbe rdx, rax
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
btc eax, 25
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 67
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 41
adc al, sil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
dec rcx
xor al, 102
add dl, dl
sub dil, -10
cmovnbe cx, si
cmp edx, 100
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and edx, 69
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 29
or bl, sil
add si, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
