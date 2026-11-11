.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
not rdx
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovnbe rbx, rax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
sbb cl, bl
sbb al, -47
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and si, 68
test al, 80
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
add dl, -26 # instrumentation
btr edx, 30
imul di, si
cmovp rdi, rcx
imul ebx, esi, 27
or edx, -127
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
btr rdi, rsi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb eax, -984782068
cmovz edx, edi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
imul rsi
mul rbx
test cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sub dil, -10
add cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul esi, edx
bts rdi, rbx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
movzx rax, bx
cmovnb dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
