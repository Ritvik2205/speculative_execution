.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
test al, -7
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
xor bl, -61
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
or dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
