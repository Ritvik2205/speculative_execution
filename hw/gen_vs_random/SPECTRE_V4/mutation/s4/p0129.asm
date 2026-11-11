.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
imul di, si
sbb cl, bl
cmovnbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
add dl, -26 # instrumentation
btr edx, 30
imul ebx, esi, 27
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul rsi
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
cmovnb dx, dx
bts rdi, rbx
add cl, dl
cmovz esi, ecx
imul esi, edx
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
test al, 80
mul rbx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
btr rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and si, 68
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
cmovz edx, edi
mov edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or edx, -127
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
not rdx
sbb eax, 2051746726
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
cmovl rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovp rdi, rcx
sbb al, 123
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
test cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
