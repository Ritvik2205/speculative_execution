.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
lea rcx, qword ptr [rdx]
cmovnbe rbx, rsi
lea si, qword ptr [rcx + rcx + 40728]
test rax, -1704969603
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], -122
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
mul dil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
