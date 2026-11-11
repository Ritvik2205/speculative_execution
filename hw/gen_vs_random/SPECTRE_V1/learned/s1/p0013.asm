.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
adc al, cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
add dil, 45 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 51
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
imul rsi, rax
cmovp ax, si
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
bt cx, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
