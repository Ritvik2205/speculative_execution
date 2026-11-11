.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
sbb al, 99
bt rax, rsi
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 10
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
or edi, 19
lea rdx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
lea bx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
