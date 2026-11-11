.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 17
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
xor dil, dil
test rcx, -613256812
and al, -128 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovb di, cx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
xor dl, 8
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
cmovns ax, si
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
xor esi, 92
and rbx, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
