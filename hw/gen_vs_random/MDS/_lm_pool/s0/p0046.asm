.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
and dl, cl
or rdx, -48
or al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
test bl, -14
test al, -81
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or al, 54
bt di, si
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
