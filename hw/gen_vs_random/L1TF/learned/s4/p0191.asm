.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
lea cx, qword ptr [rdi]
lea eax, qword ptr [rcx + rcx + 31865]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
xchg eax, ecx
jmp .bb_0.1
.bb_0.1:
cmp ax, -14781
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
xor dl, dil
xchg rbx, rsi
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
