.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 30
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
cmovnp rbx, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
xor bl, al
xor al, -89
not al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
bt dx, ax
test sil, -55
xor bl, al
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
