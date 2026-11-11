.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
test cl, -24
sub dil, al
cmovno ax, di
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
add bl, al
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
