.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
setnbe bl
lea esi, qword ptr [rbx + rcx + 22]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
lea rbx, qword ptr [rbx + rcx + 76]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 6
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
cmovl rdx, rcx
cmp dil, dl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
cmovb cx, cx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
