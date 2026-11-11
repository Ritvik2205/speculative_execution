.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
test cl, -113
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
test rbx, 40
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
btr edi, ecx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 59
xor al, 9
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
