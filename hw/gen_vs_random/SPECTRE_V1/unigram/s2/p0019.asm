.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdx, rcx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
cmovnp bx, bx
cmp cl, 72
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
cmovno rcx, rbx
and si, 82
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
imul edx
cmp al, al
lea rax, qword ptr [rcx + rsi + 53]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
