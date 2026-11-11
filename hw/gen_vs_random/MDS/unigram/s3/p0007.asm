.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 53
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
cmovnz rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 60
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
xor bl, 2
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
cmovp dx, dx
cmovnbe dx, di
and bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
xor rdi, -50
and bl, -49 # instrumentation
cmovno bx, di
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
and dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
