.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and eax, -409673666
setns dl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 30
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
