.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
sub di, cx
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
cmovo ebx, edx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 64
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
cmovb rdi, rdi
mov ecx, -405458789
bswap ecx
cmovnz rax, rdx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 17
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
sbb cl, bl
adc al, al
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
test ecx, -1293796332
sub bl, bl
cmovnz edx, eax
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 55
adc bl, 79
or sil, -47
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
adc dl, 46
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
or dl, dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
mov rdi, -7956777892145474940
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 79
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
inc al
mul si
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
sub edx, 73
btc rbx, rdi
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
mov rdi, rbx
and esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
