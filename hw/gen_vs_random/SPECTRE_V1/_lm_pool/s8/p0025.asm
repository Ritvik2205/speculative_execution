.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 47
jmp .bb_0.2
.bb_0.2:
or dl, al
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
sub sil, cl
sbb bl, cl
sub al, dil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
