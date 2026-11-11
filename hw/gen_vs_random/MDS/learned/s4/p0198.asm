.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
not si
test cl, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
test cl, 62
test al, 74
cmovnl ebx, eax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 30
bts rax, 149
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
