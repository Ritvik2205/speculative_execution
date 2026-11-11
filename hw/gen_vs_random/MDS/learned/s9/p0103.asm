.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or al, 74
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or bl, al
bt cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
or cl, dl
xor di, -83
bt dx, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or cl, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
