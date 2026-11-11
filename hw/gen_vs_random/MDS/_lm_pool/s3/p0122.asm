.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 31
bt si, cx
and dil, bl
and dl, dl
or cl, 30
and dil, dl
or sil, -78
test dil, cl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
test bl, -9
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and ax, 19740
or al, -75
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
test dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
