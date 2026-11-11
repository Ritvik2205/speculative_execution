.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
not dil
inc dil
add bl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
bt eax, 78
imul dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
xchg rbx, rsi
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
add al, 13 # instrumentation
cmovno rbx, rdx
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
cdq
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmp cx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
