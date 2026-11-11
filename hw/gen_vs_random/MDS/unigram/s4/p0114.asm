.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edx, -44
test cl, 62
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and edi, 23
xor al, 34
cmovnp rax, rbx
or rsi, rax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
cmovnp rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
cmovo rsi, rbx
not ecx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
test al, dil
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and al, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovo ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
