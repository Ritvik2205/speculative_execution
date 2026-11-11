.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rcx, rsi
sbb cl, bl
test cl, bl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
sbb cl, bl
movzx rax, bx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
sbb eax, -1688332460
cmovp rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovnb dx, dx
imul rsi
imul ebx, esi, 27
bts rdi, rbx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
mov edx, ecx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
test al, 80
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dl, -26 # instrumentation
btr edx, 30
not rdx
and si, 68
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul di, si
cmovz edx, edi
sbb al, 32
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
add cl, dl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
mul rbx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovz esi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovnbe rbx, rax
or edx, -127
imul esi, edx
btr rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
