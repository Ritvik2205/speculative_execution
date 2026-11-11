.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dil
lea edx, qword ptr [rdx + rbx + 19]
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
cmovnz cx, cx
cmp al, 27
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
lea dx, qword ptr [rdx]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
add dl, 21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
