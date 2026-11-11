.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
setns cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
or dil, 80
xor bl, dil
sbb cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb dil, al
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 45
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
