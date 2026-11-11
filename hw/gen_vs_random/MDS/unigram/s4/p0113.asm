.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 58
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
xor si, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 26
jmp .bb_0.1
.bb_0.1:
or al, cl
cmovl rbx, rax
cmovnb di, ax
xor dx, 52
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
cmovnb dx, si
btc eax, 35
bt edi, 254
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and cl, -101
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
