.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dx, cx
cmovno rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
mov eax, ecx
cmovb edi, edx
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc cl, cl
and rax, 0b1111111111111 # instrumentation
lea edx, qword ptr [rax + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
cmovz esi, ebx
and bl, cl
add dil, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
