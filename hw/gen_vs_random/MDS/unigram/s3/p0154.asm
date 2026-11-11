.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
bts cx, ax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 51
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 65
and al, -56
and al, -115 # instrumentation
cmovl dx, ax
xor al, -28
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 16
and bl, cl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dil, -57
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rsi
cmovns rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
