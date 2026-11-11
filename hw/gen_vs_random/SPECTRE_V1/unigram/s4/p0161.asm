.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, 7046
lea ax, qword ptr [rsi + rbx + 13]
add rcx, 23
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 59
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs rax, rax
test rsi, -1408527332
add si, 74
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
mul dl
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 61
and rdx, rcx
xor dx, -128
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
