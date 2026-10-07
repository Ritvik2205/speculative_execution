.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al 
add cl, dl 
sbb al, -62 
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx] 
cmovz esi, ecx 
or edx, -127 
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi] 
mov edx, ecx 
test al, 80 
sbb cl, bl 
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94 
test cl, bl 
cmovl rcx, rsi 
btr rdi, rsi 
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi] 
imul ebx, esi, 27 
bts rdi, rbx 
sbb cl, bl 
imul di, si 
add dl, -26 # instrumentation
btr edx, 30 
cmovz edx, edi 
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52 
cmovnb dx, dx 
sub dil, -10 
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx 
cmovnbe rbx, rax 
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx] 
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14 
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi] 
not rdx 
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45 
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi 
cmovp rdi, rcx 
movzx rax, bx 
and si, 68 
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx 
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx] 
imul esi, edx 
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1 
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi] 
imul rsi 
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx 
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93 
sbb eax, -1688332460 
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7 
mul rbx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
