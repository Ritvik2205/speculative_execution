.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
lea ebx, qword ptr [rax + rdx + 2427]
sub rsi, 8
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
setle cl
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
bswap rsi
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
adc sil, 13
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
