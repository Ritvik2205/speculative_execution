.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
sub rsi, 97
neg ebx
bts dx, 207
xchg rsi, rdx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, bl
and ax, 2806
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
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
xor ax, 913
cmovnbe rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
