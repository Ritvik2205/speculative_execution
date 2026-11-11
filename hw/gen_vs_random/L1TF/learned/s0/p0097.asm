.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dil
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
lea cx, qword ptr [rdi + rbx]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
