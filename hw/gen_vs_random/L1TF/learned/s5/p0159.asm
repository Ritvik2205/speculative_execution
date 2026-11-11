.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and edi, 52
sub dil, 87
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
cmp sil, dl
cmp dx, 20
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rax, -109
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 87
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
