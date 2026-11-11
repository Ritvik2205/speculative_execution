.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or cl, -36
cmovnbe ecx, edx
xor ecx, ecx
cmovl rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and al, -38 # instrumentation
cmovnb si, si
or rdi, 21
xor eax, 2063216578
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
or esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
btc eax, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
