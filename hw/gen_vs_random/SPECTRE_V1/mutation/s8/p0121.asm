.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ebx
xchg rsi, rdx
sub rsi, 97
bts dx, 207
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
sub bl, bl
and ax, 32540
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
test bl, dl
lea ebx, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
lea ax, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
