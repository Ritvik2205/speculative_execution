.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 34
add cl, al
sub al, bl
and dil, 58
test cx, 18
jmp .bb_0.1
.bb_0.1:
xor ax, 30996
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or dx, ax
and dx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
