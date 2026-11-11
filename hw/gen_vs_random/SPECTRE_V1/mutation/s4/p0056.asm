.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
btr bx, 193
cmovz rax, rdi
xor bl, bl
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
bts rdi, 19
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
btr ax, 197
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add al, dl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
imul dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
