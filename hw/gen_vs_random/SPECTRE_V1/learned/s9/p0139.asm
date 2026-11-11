.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
cmp esi, 31
mov dl, bl
cmp ax, -11439
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
add cl, dl
or dl, sil
add al, dil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
