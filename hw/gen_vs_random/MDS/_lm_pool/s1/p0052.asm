.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
xor rdi, -9
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
test dil, 46
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
test rcx, -613256812
and al, 35
or al, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 98
xor bx, 82
and dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
