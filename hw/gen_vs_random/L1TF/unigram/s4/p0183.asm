.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
nop
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 74
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
setb sil
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 98
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and edi, esi
lea rdx, qword ptr [rcx + rcx + 35]
bts eax, 91
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 51
adc ebx, 46
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
