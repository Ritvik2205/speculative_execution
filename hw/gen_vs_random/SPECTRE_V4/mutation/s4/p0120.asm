.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
imul rsi
cmovnb dx, dx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and si, 68
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul di, si
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
add cl, dl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
bts rdi, rbx
cmovz edx, edi
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
imul ebx, esi, 27
mul rbx
sbb cl, bl
sub dil, -10
not rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
or edx, -127
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovp rdi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sbb eax, 4
test al, 66
sbb cl, bl
cmovz esi, ecx
imul esi, edx
test cl, bl
cmovl rcx, rsi
movzx rax, bx
mov edx, ecx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
btr rdi, rsi
sbb al, 123
cmovnbe rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
