.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
sub rcx, -90
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
cmp sil, cl
jmp .bb_0.1
.bb_0.1:
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 44
test rdx, rsi
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
