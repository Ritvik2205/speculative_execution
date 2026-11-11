.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 105
test edx, 1891691791
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
bts edi, 41
or al, -5
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
xor ax, 27703
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
cmovl edx, eax
setb al
add al, -33 # instrumentation
cmovnl ax, bx
sbb ecx, 1
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
bt ecx, eax
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
