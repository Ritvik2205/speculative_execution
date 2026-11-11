.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 68
test dil, -126
lea edi, qword ptr [rax]
add dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
sbb rax, 803312930
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
lea rsi, qword ptr [rcx + rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 43
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
