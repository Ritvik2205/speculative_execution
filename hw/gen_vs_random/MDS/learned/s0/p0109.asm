.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
or cl, dil
xor dl, -59
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
xor dl, dil
not al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
test rax, -363019044
btc rdx, 97
not cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
