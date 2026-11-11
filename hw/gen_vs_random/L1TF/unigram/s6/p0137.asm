.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
or al, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
cmovnl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
sub rcx, rax
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rcx]
add dl, -87 # instrumentation
cmovnle rbx, rdx
or rsi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
xor sil, dil
or rdi, 100
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
adc sil, cl
lea ax, qword ptr [rdx + rsi]
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
