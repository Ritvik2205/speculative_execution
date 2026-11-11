.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and sil, dil
test rdi, 84
jmp .bb_0.1
.bb_0.1:
bts rbx, 25
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and edi, 23
bts rbx, rdi
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and cl, bl
bt bx, si
jmp .bb_0.2
.bb_0.2:
test cl, 91
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
