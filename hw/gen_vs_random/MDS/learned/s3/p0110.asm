.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 49
or dil, bl
xor dl, 8
or rbx, -72
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test rdx, 38
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
cmovnbe rbx, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
