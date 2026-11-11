.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
test eax, 1838539683
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 94
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
bt esi, ecx
and al, 2 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
or rbx, -72
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rsi, 9
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
btr ax, 193
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
test dx, 16353
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
