.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
sbb ebx, -116
and dil, -22
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
jmp .bb_0.3
.bb_0.3:
lea rbx, qword ptr [rcx + rsi + 78]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
sub rsi, 51
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
add bx, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
