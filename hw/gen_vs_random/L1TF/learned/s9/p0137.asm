.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 67
or al, -5
test eax, 899472326
lea rdi, qword ptr [rbx + rcx + 19]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
or dil, cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmp al, dl
sub rcx, -121
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
