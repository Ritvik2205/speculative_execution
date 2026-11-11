.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or al, -57
xor cx, 113
or al, -5
sub al, dl
lea di, qword ptr [rbx + rdx + 57]
or dl, cl
test sil, cl
lea ebx, qword ptr [rcx + rsi]
and sil, sil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
cmovl edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
