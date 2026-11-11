.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul di, si
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
or edx, -127
cmovz edx, edi
test cl, bl
mul rbx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
mov edx, ecx
sub dil, -10
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovz esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and si, 68
imul esi, edx
cmovl rcx, rsi
add dl, -26 # instrumentation
btr edx, 30
sbb cl, bl
cmovp rdi, rcx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
bts rdi, rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb al, -47
btr rdi, rsi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
imul rsi
sbb eax, 4
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
test al, 66
imul ebx, esi, 27
cmovnbe rbx, rax
cmovnb dx, dx
add cl, dl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
movzx rax, bx
not rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
