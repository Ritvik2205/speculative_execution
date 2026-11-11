.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
adc al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 69
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
adc dil, al
test dil, 18
lea cx, qword ptr [rdi + rdi + 1]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 35
add dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
