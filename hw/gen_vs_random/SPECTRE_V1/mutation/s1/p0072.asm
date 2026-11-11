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
bts rdi, 229
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
xor bl, bl
cmovz rax, rdi
btr bx, 193
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rbx + rbx + 18245]
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
cmp al, 62
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
