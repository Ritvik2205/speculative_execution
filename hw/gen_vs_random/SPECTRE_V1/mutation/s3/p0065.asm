.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
cmovz rax, rdi
xor bl, bl
btr bx, 144
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
bts rdi, 229
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
cmp al, 23
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
lea eax, qword ptr [rbx + rbx + 18245]
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
