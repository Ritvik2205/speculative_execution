.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdx, 95
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 71
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 100
add dl, -73 # instrumentation
btr dx, di
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
adc sil, dl
add bl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
or cx, 63
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovnl ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
