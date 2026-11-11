.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -122
btc ebx, edx
or eax, -1777347252
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
cmovb rdi, rdi
and eax, 366961170
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and al, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
