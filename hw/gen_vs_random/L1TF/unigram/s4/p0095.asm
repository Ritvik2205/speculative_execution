.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
cmovb ax, cx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add al, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 49
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 62
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
inc al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
dec cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
bts ebx, 84
or rdx, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
