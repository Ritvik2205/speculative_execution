.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
setnle al
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 67
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
mov dil, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
bts bx, 48
lea edx, qword ptr [rbx + rdi + 25]
adc al, bl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
add cl, -35 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmp dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
