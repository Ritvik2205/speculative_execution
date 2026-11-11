.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
sbb dl, al
sub dil, 87
or al, -57
test cl, 64
cmp rsi, 79
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 27
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and cl, al
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
