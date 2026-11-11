.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and si, 68
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul esi, edx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sbb eax, 4
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovz esi, ecx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
bts rdi, rbx
imul rsi
btr rdi, rsi
or edx, -127
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
cmovnb dx, dx
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
mul rbx
sbb cl, bl
test al, 80
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmovp rdi, rcx
imul ebx, esi, 27
add cl, dl
sbb al, -62
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
not rdx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
imul di, si
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovnbe rbx, rax
test cl, bl
mov edx, ecx
cmovl rcx, rsi
cmovz edx, edi
sub dil, -10
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
