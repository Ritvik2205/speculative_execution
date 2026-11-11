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
add dl, -1
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
mul rax
imul si, bx
btr cx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -33
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
btc bx, dx
mov bx, 21854
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
