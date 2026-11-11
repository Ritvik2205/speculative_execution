.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
lea rax, qword ptr [rdi + rdi]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test al, dil
and al, -68
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
cmp dil, cl
jmp .bb_0.1
.bb_0.1:
or esi, ebx
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
or al, -5
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
