.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb dx, dx
sbb cl, bl
cmovp rdi, rcx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmovz edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
sbb al, -47
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
cmovl rcx, rsi
imul rsi
mov edx, ecx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test cl, bl
add dl, -26 # instrumentation
btr edx, 30
test al, 66
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
imul di, si
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
mul rbx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and si, 68
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
movzx rax, bx
sbb cl, bl
btr rdi, rsi
not rdx
or edx, -127
bts rdi, rbx
add cl, dl
cmovz esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
sub dil, -10
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
imul esi, edx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
imul ebx, esi, 27
sbb eax, 1081973675
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovnbe rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
