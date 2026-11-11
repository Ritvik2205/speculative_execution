.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
test cl, -33
sbb dil, cl
setns cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 52
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -101
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
