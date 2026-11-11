.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
cmovl rcx, rsi
cmovnb dx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
bts rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
or edx, -127
not rdx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
movzx rax, bx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and si, 68
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add dl, -26 # instrumentation
btr edx, 30
sub dil, -10
sbb eax, 4
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
mov edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
btr rdi, rsi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
imul ebx, esi, 27
cmovz esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovz edx, edi
mul rbx
imul esi, edx
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
sbb cl, bl
imul rsi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
cmovp rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
imul di, si
sbb al, 32
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
test cl, bl
test al, 80
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
