.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
inc bl
btr ecx, 40
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
and rcx, -29
cmovnbe dx, ax
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -93 # instrumentation
not rsi
lea rax, qword ptr [rbx + rax + 35]
test cl, -33
and dl, cl
lea si, qword ptr [rcx + rcx + 90]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
cmp sil, bl
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
