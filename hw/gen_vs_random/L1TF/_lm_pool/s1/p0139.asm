.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
cmp rcx, 95
cmovb si, di
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
jmp .bb_0.2
.bb_0.2:
add dl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
or al, -2
test al, -32
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
