.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and di, 91
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and dl, -73
xor rax, -270810088
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
test cl, -113
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
xor bl, sil
jmp .bb_0.2
.bb_0.2:
xor al, 122
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
or sil, cl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
