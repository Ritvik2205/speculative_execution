.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, bl
and al, -36
or si, 75
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
add al, 118
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
cmovs eax, ebx
xor bl, cl
sub sil, -36
add cl, -37 # instrumentation
adc eax, -39
test edx, 573099753
adc ebx, 117
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
dec rbx
mov al, al
cmovle rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor dl, cl
imul ecx, ebx, 94
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 97
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
cmovp esi, edx
cmovns ax, ax
adc ecx, -12
and sil, -49
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
sub al, 98
xor al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 46
add bl, -18 # instrumentation
mov rbx, rdx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
or ecx, 43
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
imul edx, eax
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
cmovle esi, ebx
test edx, 573099753
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sbb al, -101
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 78
add dl, -114 # instrumentation
cmovl cx, ax
imul cl
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
