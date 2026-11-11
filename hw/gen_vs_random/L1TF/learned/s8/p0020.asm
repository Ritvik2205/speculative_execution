.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
xor dl, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
add dl, 65 # instrumentation
cmovo rdx, rdi
jmp .bb_0.2
.bb_0.2:
and rdx, 88
lea ax, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
sub dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
