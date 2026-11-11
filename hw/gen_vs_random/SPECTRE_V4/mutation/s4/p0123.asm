.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 68
cmovnb dx, dx
not rdx
mov edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
bts rdi, rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
sub dil, -10
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
or edx, -127
cmovp rdi, rcx
imul esi, edx
sbb eax, -1688332460
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
movzx rax, bx
sbb al, 32
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
btr rdi, rsi
imul rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
imul di, si
test cl, bl
cmovnbe rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
imul ebx, esi, 27
add dl, -26 # instrumentation
btr edx, 30
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovl rcx, rsi
cmovz edx, edi
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmovz esi, ecx
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
test al, 66
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
mul rbx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
