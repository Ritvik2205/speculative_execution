.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
cmovnb dx, dx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
or edx, -127
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
test al, 66
add cl, dl
add dl, -26 # instrumentation
btr edx, 30
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
imul ebx, esi, 27
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
imul rsi
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
imul esi, edx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
bts rdi, rbx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovz esi, ecx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
test cl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and si, 68
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
mov edx, ecx
imul di, si
sbb cl, bl
btr rdi, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb eax, 4
sbb al, -47
cmovnbe rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovp rdi, rcx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovl rcx, rsi
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
mul rbx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
movzx rax, bx
sub dil, -10
not rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
