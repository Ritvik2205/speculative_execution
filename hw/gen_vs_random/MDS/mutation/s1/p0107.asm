.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
bt ecx, edx
and dl, -72 # instrumentation
not bl
cmovnb rax, rsi
cmovp ebx, esi
cmovo edx, ecx
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
