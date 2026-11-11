.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 61
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 96
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
sbb cl, 105
and cl, al
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
xor di, di
lea rbx, qword ptr [rdi + rdx]
and bl, 124
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
