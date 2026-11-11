.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
neg dx
bt rax, rbx
sub bl, 98
sbb sil, cl
lea edx, qword ptr [rcx + rsi]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
or eax, ebx
btr eax, ebx
jmp .bb_0.1
.bb_0.1:
setp bl
cmp rdi, rcx
cmp ecx, edx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 72
setle al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
