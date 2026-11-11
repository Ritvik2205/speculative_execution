.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rbx
sbb al, -101
test al, 80
mul rbx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
mov edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul ebx, esi, 27
sbb cl, bl
cmovnb dx, dx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
sbb cl, bl
imul di, si
imul rsi
and si, 68
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
test cl, bl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
not rdx
cmovz edx, edi
imul esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovl rcx, rsi
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
add cl, dl
or edx, -127
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
btr rdi, rsi
sbb eax, 4
add dl, -26 # instrumentation
btr edx, 30
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
cmovnbe rbx, rax
movzx rax, bx
cmovp rdi, rcx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
