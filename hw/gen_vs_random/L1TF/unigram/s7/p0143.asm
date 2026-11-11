.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
sub dil, 87
xor dx, di
lea bx, qword ptr [rcx + rbx + 11]
or al, -57
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and edi, edx
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 86
xchg edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
add al, cl
sbb ax, -9396
xor rdx, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
