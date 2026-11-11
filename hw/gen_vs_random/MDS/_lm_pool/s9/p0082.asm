.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and al, -55
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
xor dl, 8
and al, bl
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and bl, al
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 82
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 13
and cl, 79
or al, bl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
