.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
btr rdi, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
add dl, -26 # instrumentation
btr edx, 30
sbb eax, 4
not rdx
test cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
add cl, dl
imul rsi
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sbb al, 32
mov edx, ecx
sbb cl, bl
cmovl rcx, rsi
sbb cl, bl
imul ebx, esi, 27
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovz edx, edi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovz esi, ecx
cmovnb dx, dx
imul esi, edx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bts rdi, rbx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
cmovnbe rbx, rax
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
imul di, si
or edx, -127
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
movzx rax, bx
cmovp rdi, rcx
and si, 68
mul rbx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
test al, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
