.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -5
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmovnp ax, si
not cl
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and dl, 59
and dl, dl
and sil, cl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
