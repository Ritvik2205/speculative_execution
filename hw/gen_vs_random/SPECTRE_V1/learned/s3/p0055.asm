.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
setnle dl
sbb ecx, 44
sub dil, -32
bt edx, 82
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
