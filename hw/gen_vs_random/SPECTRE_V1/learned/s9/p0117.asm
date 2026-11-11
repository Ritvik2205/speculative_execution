.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
lea di, qword ptr [rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
jle .bb_0.3
jmp .exit_0
.bb_0.3:
or ecx, 10
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 64
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
