.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
or al, sil
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
xor al, -26
and dil, -39
or rcx, -17
xor al, 99
jmp .bb_0.2
.bb_0.2:
xor ax, -16696
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
