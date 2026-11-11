.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
bts rdi, 19
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
xor bl, bl
btr bx, 144
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
loope .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, dl
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
lea eax, qword ptr [rbx + rbx + 18245]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
cmp al, 46
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
