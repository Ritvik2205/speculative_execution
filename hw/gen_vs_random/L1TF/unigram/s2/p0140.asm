.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
imul rcx
add cl, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
test bx, cx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
xor ecx, ebx
sbb rdi, 90
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 11
jmp .bb_0.1
.bb_0.1:
mul rax
test rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
