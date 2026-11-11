.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
cmovz edx, edi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
sbb eax, -1688332460
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
imul rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
or edx, -127
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovl rcx, rsi
imul esi, edx
sbb al, 123
bts rdi, rbx
test cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
test al, 80
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
cmovz esi, ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
mul rbx
sbb cl, bl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
not rdx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
imul ebx, esi, 27
movzx rax, bx
cmovnb dx, dx
btr rdi, rsi
cmovp rdi, rcx
cmovnbe rbx, rax
add dl, -26 # instrumentation
btr edx, 30
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul di, si
and si, 68
mov edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
