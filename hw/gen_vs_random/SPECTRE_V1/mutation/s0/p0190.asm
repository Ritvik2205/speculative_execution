.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rdx
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
neg ebx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
bts dx, 26
sub rsi, 97
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
sub bl, bl
lea ax, qword ptr [rsi + rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and ax, 2806
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
