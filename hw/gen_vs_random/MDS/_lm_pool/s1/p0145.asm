.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test eax, -409834435
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 82
and di, 91
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
