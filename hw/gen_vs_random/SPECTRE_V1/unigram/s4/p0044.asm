.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
add dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
add dl, bl
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
mul rdi
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
test dl, 17
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
add dil, 99 # instrumentation
sets dil
sbb dil, 76
cbw
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ecx
sbb dl, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
