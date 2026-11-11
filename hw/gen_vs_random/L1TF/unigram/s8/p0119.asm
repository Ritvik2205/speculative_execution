.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
sbb bx, 67
cmovo ebx, esi
imul rcx
test dl, cl
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add cl, -20
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
movzx edx, cl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
lea rbx, qword ptr [rdx + rbx]
add dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
imul dl
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
