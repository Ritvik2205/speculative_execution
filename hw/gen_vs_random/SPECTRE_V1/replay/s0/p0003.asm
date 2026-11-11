.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
sub rsi, 97
neg ebx
bts dx, 26
xchg rsi, rdx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, bl
and ax, -22629
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
test bl, dl
lea ebx, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
lea ax, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
