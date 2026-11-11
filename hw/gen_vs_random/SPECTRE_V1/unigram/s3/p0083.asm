.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
add al, sil
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 50
or sil, 52
add cl, 103 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
btr rdx, rdi
lea rsi, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 28
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 14
setno al
cmovz rax, rdi
mul al
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
