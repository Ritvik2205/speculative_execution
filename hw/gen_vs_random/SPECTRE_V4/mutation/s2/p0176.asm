.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edx, edi
and si, 68
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
bts rdi, rbx
imul di, si
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
not rdx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
cmovz esi, ecx
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sbb al, 123
movzx rax, bx
btr rdi, rsi
cmovp rdi, rcx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
or edx, -127
mov edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
sbb eax, 1081973675
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
imul rsi
cmovnb dx, dx
cmovl rcx, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovnbe rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
add dl, -26 # instrumentation
btr edx, 30
mul rbx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb cl, bl
imul ebx, esi, 27
imul esi, edx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
test al, 80
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
