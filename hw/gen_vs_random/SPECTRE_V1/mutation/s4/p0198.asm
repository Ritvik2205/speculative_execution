.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
cmovz rax, rdi
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
xor bl, bl
bts rdi, 19
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
btr bx, 193
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 77
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
lea eax, qword ptr [rbx + rbx + 18245]
sub bl, dl
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
