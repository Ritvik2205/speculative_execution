.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
add cl, 39 # instrumentation
lea cx, qword ptr [rsi]
cmovnle edx, esi
add dl, 22
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
lea esi, qword ptr [rdi + rsi + 45859]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
add dl, 120 # instrumentation
adc cl, 66
or rdx, 11
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
