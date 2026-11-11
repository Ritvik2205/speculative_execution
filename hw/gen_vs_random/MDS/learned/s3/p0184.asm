.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
xor ax, 2053
xor rbx, -51
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub di, 10
xor ax, 2053
cmovl rdx, rbx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
xor ax, 24729
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
cmovno si, si
xor ax, 2053
or cl, al
and dl, dil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 93
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bt edx, 69
btc rsi, 85
cmovnbe rax, rsi
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or eax, -1642752131
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
sub esi, 90
cmovnbe rbx, rdx
or dl, -18
not dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 91
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
mov dil, 30
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
