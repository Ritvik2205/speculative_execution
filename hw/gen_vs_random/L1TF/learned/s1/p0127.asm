.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
setb bl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
adc al, 36
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
inc sil
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
dec cx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -8
add rdx, rax
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
