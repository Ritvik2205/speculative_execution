.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
or sil, -49
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
xor ecx, 8
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
bts rcx, rdx
xor bx, 73
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
bt ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
