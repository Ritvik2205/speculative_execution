.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
lea ax, qword ptr [rcx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
sub sil, -18
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 59
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 83
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, -111
and cl, -57
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
