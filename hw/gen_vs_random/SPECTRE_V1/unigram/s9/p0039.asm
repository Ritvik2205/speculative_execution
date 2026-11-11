.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
sbb dl, cl
cmovno cx, di
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ecx, qword ptr [rdi]
lea rax, qword ptr [rdx + rcx + 18]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
lea ax, qword ptr [rax + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
add al, al
bt edx, esi
sbb edx, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
