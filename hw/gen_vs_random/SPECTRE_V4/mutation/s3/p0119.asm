.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and si, 68
sub dil, -10
btr rdi, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
imul rsi
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
sbb al, -47
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovz edx, edi
sbb cl, bl
mul rbx
imul esi, edx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
bts rdi, rbx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dl, -26 # instrumentation
btr edx, 30
cmovnb dx, dx
not rdx
cmovnbe rbx, rax
mov edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul di, si
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
cmovp rdi, rcx
test al, 66
add cl, dl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
or edx, -127
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
test cl, bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
movzx rax, bx
imul ebx, esi, 27
sbb eax, 4
cmovz esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
