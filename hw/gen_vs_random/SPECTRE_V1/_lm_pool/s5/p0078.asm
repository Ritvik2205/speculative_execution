.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
setno cl
setz bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
