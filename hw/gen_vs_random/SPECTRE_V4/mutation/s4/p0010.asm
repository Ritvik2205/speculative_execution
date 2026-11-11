.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
sbb cl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
bts rdi, rbx
cmovp rdi, rcx
cmovz edx, edi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovz esi, ecx
and si, 68
cmovnb dx, dx
or edx, -127
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
sub dil, -10
btr rdi, rsi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
imul rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
imul di, si
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
imul esi, edx
cmovl rcx, rsi
test cl, bl
sbb al, -47
test al, 80
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
mul rbx
imul ebx, esi, 27
sbb eax, 4
sbb cl, bl
mov edx, ecx
movzx rax, bx
add cl, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
not rdx
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
add dl, -26 # instrumentation
btr edx, 30
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
