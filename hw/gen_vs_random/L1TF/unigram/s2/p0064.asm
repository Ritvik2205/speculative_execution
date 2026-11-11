.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
add dl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovb dx, bx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 99
add dl, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
lea bx, qword ptr [rsi + rbx + 29]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
imul dl
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
