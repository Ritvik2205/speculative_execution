.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
test al, 80
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
movzx rax, bx
cmovnb dx, dx
btr rdi, rsi
sbb eax, 1081973675
cmovz edx, edi
cmovl rcx, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
or edx, -127
mov edx, ecx
test cl, bl
imul di, si
sbb al, 123
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add cl, dl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
not rdx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
bts rdi, rbx
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and si, 68
add dl, -26 # instrumentation
btr edx, 30
cmovz esi, ecx
mul rbx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul ebx, esi, 27
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
imul esi, edx
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovnbe rbx, rax
cmovp rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
