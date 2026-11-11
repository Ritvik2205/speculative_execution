.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
dec rcx
sbb al, 66
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
adc bx, 68
cmovnle rsi, rcx
adc ecx, 37
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
lea rax, qword ptr [rbx + rdx + 34714]
cmovnz ax, dx
adc dil, 59
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
