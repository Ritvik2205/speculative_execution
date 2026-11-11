.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb cl, bl
movzx rax, bx
mul rbx
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
imul esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
add cl, dl
cmovz esi, ecx
sbb al, -101
imul ebx, esi, 27
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
not rdx
imul di, si
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
or edx, -127
bts rdi, rbx
test cl, bl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
mov edx, ecx
sbb eax, -1688332460
cmovnbe rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
add dl, -26 # instrumentation
btr edx, 30
and si, 68
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub dil, -10
btr rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
sbb cl, bl
imul rsi
test al, 80
cmovp rdi, rcx
cmovnb dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
