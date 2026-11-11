.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
cmp al, -119
cmovle bx, dx
setp cl
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test eax, 899472326
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
add sil, -61
adc al, 70
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
