.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
mov al, 7
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 44
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
xor sil, bl
sub dil, -111
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
