.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
mul rcx
add cl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub ebx, 75
add cl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
test dil, -116
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
cmovb rcx, rdx
test ax, -32457
adc cl, -19
sbb ecx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
