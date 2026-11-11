.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
test edi, esi
mul cx
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
movsx rbx, di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
bt edi, eax
add dl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
test cx, -17886
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
