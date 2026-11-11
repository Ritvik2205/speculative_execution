.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
xor cx, -18
and si, -121
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 82
or rax, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and cl, 49 # instrumentation
cmovp rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
bt cx, 22
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rdi, 46
xor bx, 14
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
btc eax, 40
test si, 3
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
