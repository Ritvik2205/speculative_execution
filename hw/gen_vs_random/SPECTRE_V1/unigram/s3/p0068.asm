.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 45 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
adc rdx, 35
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 94
cmp cl, al
cmp esi, eax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
or dil, -55
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
imul edi, eax
cmovnbe rdi, rcx
setns dl
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
