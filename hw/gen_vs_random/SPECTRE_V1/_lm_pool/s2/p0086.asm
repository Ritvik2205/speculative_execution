.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
test al, 42
setnb bl
sbb dil, al
add cl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, dl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
lea rdi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
