.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -57
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
cmovnle dx, ax
lea rbx, qword ptr [rdx + rcx]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
lea edx, qword ptr [rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov cx, -13260
cmovz edi, ebx
add dl, -96 # instrumentation
cmovo eax, eax
or dx, 91
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
add dl, -24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmovb rcx, rbx
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
