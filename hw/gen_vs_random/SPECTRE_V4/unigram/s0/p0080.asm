.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 91 # instrumentation
adc cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
test eax, 1340292467
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
or rax, rcx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rcx
btr ax, 109
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 65
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
cmovbe rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
cmp dil, 101
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
cmovbe edx, ecx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 91
cmp rdx, -49
neg ecx
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
add cl, sil
btc eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
cmovl rdx, rsi
btc rcx, 27
mov eax, ecx
cmovnz ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 43
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
add al, -71 # instrumentation
cmovb rdx, rsi
mov edx, -950755477
adc ebx, 66
or rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
add al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
