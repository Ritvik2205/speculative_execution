.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
test al, -70
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
lea rsi, qword ptr [rdx + rbx]
sub al, -75
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
add sil, -61
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
