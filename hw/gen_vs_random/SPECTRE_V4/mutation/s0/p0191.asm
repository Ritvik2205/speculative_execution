.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb dx, dx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
movzx rax, bx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
mov edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
imul esi, edx
add dl, -26 # instrumentation
btr edx, 30
sbb eax, 1081973675
not rdx
cmovz edx, edi
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb cl, bl
cmovp rdi, rcx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
test cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
imul rsi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
cmovnbe rbx, rax
test al, 66
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovz esi, ecx
imul di, si
sbb al, -47
imul ebx, esi, 27
and si, 68
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
bts rdi, rbx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb cl, bl
sub dil, -10
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
mul rbx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
or edx, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
