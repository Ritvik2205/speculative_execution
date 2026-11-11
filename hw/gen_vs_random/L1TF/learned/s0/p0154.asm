.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
setle dl
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
or cl, al
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
xor edi, 48
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 93
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
imul rax, rax, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
