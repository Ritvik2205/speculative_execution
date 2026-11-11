.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
neg rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
bswap rdx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
bt eax, edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 63 # instrumentation
cmovl dx, di
sbb ecx, -1
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
xor cl, 114
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
jmp .bb_0.2
.bb_0.2:
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
cmovno esi, edi
lea rcx, qword ptr [rdi + rdx + 42602]
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
cmovl edi, ebx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
lea edi, qword ptr [rbx + rdi + 43315]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add bl, 106 # instrumentation
cmovs eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
