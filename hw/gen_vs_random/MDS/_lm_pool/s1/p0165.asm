.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and cl, cl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor dl, 8
xor sil, -46
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmovnp bx, di
test dil, -51
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
xor rcx, 71
xor cl, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or dl, bl
and sil, dl
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
