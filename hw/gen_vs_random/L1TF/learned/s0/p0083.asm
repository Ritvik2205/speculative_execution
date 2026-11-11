.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rsi, rdx
or eax, ecx
xor al, dl
lea rdi, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
lea cx, qword ptr [rdi + rax + 27]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
xor dl, al
dec dil
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
