.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and bx, bx
or al, 74
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
or eax, ebx
cmovl esi, edx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
xor al, 55
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
and bx, 39
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
