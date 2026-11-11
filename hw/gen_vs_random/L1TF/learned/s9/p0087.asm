.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
sub al, -3
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
lea rax, qword ptr [rcx + rsi + 94]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
add al, -102
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
sub bl, cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
imul rdi, rsi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
