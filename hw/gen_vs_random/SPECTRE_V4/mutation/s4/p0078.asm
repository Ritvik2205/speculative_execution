.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
imul rsi
cmovp rdi, rcx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
sbb eax, 2051746726
cmovl rcx, rsi
and si, 68
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovz edx, edi
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
test cl, bl
test al, 80
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb al, 32
mul rbx
add cl, dl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
cmovnb dx, dx
imul ebx, esi, 27
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
btr rdi, rsi
imul esi, edx
or edx, -127
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
not rdx
bts rdi, rbx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
imul di, si
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
mov edx, ecx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovnbe rbx, rax
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
