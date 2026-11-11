.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
inc rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dil, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sub sil, -18
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
