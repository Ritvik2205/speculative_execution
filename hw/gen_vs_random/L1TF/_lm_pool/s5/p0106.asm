.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
or rsi, 17
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 59
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
cmovnp ax, di
add al, 74
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
bts ecx, 164
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
