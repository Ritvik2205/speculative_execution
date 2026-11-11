.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 48
or al, dl
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bt rdx, 131
xchg eax, edx
xor dil, bl
lea dx, qword ptr [rcx + rdx + 83]
sub cx, 42
sub al, -3
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
add cl, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
