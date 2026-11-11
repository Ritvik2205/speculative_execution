.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul di, si
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
sub dil, -10
not rdx
movzx rax, bx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovp rdi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
btr rdi, rsi
add cl, dl
test al, 80
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovz esi, ecx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
imul rsi
cmovz edx, edi
cmovnb dx, dx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
bts rdi, rbx
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
mul rbx
and si, 68
mov edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
sbb eax, 4
test cl, bl
cmovl rcx, rsi
imul esi, edx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
or edx, -127
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb cl, bl
imul ebx, esi, 27
add dl, -26 # instrumentation
btr edx, 30
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
