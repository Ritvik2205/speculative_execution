.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 96
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
cmovnbe cx, ax
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
lea rdx, qword ptr [rcx + rax]
sub dl, cl
dec rdx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 67
sbb al, -47
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
cmovb edx, esi
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
bt edi, 82
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
cmovnz di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
