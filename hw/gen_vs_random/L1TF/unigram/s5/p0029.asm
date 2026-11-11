.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
add dil, 108 # instrumentation
setl dil
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 89
add sil, 30 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
lea rcx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
test rsi, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
add dl, 100 # instrumentation
lea cx, qword ptr [rdx]
lea rax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
