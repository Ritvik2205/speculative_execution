.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
cmovnle rdi, rcx
add al, 19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
lea esi, qword ptr [rdi]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rax]
add dil, 118 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
sbb al, -107
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edx
add bl, -29 # instrumentation
add bl, -70 # instrumentation
setnp bl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
lea di, qword ptr [rcx + rax + 41]
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
