.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
imul sil
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
cmovnz rax, rdi
setz dl
lea edi, qword ptr [rax + rsi + 2]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 98
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 27
jmp .bb_0.1
.bb_0.1:
adc al, -6
bt edx, 38
sbb dil, al
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], dx
lea ax, qword ptr [rbx + rcx + 25]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
