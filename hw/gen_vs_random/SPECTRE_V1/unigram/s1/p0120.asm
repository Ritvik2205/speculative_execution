.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
bt rbx, rsi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
add dl, -96 # instrumentation
cmovo ebx, ebx
cmovnle edx, ebx
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
sbb edi, ebx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
cmovnz dx, cx
setno cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
