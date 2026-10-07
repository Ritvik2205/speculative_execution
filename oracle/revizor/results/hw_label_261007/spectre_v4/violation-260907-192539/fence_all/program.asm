.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
lfence
and al, 0b11111000 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
idiv al 
lfence
add cl, dl 
lfence
sbb al, -62 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov esi, dword ptr [r14 + rbx] 
lfence
cmovz esi, ecx 
lfence
or edx, -127 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs rdx, qword ptr [r14 + rsi] 
lfence
mov edx, ecx 
lfence
test al, 80 
lfence
sbb cl, bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rcx], 94 
lfence
test cl, bl 
lfence
cmovl rcx, rsi 
lfence
btr rdi, rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rsi] 
lfence
imul ebx, esi, 27 
lfence
bts rdi, rbx 
lfence
sbb cl, bl 
lfence
imul di, si 
lfence
add dl, -26 # instrumentation
lfence
btr edx, 30 
lfence
cmovz edx, edi 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp qword ptr [r14 + rcx], -52 
lfence
cmovnb dx, dx 
lfence
sub dil, -10 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and rbx, 0b111 # instrumentation
lfence
btc qword ptr [r14 + rcx], rbx 
lfence
cmovnbe rbx, rax 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock neg byte ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rbx], -14 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovl rdi, qword ptr [r14 + rsi] 
lfence
not rdx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rsi], 45 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnb esi, dword ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rsi], rdi 
lfence
cmovp rdi, rcx 
lfence
movzx rax, bx 
lfence
and si, 68 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
xchg word ptr [r14 + rdi], bx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovno edi, dword ptr [r14 + rdx] 
lfence
imul esi, edx 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rsi], 1 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov eax, dword ptr [r14 + rdi] 
lfence
imul rsi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rdx], rdx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdi], -93 
lfence
sbb eax, -1688332460 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
bts dword ptr [r14 + rax], 7 
lfence
mul rbx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
