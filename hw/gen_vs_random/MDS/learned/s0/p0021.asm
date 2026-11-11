.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and al, bl
mov edx, eax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bx, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
bt cx, 9
xor ax, 24729
xor al, -119
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and dl, 84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
cmovns ecx, esi
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
