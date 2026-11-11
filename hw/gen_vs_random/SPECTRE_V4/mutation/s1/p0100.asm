.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, rsi
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
mul rbx
cmovz esi, ecx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmovp rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
cmovz edx, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
imul di, si
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or edx, -127
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and si, 68
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
cmovnb dx, dx
mov edx, ecx
not rdx
sbb al, 123
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
sub dil, -10
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test cl, bl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
test al, 80
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
add dl, -26 # instrumentation
btr edx, 30
sbb eax, -984782068
imul rsi
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
imul ebx, esi, 27
cmovnbe rbx, rax
bts rdi, rbx
movzx rax, bx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
imul esi, edx
cmovl rcx, rsi
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
