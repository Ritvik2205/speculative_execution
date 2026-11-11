.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rax, bx
imul rsi
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
imul di, si
cmovl rcx, rsi
sbb cl, bl
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
mul rbx
cmovp rdi, rcx
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
sbb al, -47
add dl, -26 # instrumentation
btr edx, 30
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
btr rdi, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
test al, 80
mov edx, ecx
sbb cl, bl
sbb eax, 2051746726
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test cl, bl
imul ebx, esi, 27
cmovnb dx, dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
or edx, -127
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmovz esi, ecx
add cl, dl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
imul esi, edx
and si, 68
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
not rdx
bts rdi, rbx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
