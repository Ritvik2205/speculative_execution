.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
and bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
cmovz eax, ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and bl, bl
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
or bl, al
bt esi, ebx
not al
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
cmovnz bx, dx
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
