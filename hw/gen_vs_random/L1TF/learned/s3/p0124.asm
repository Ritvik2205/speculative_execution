.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
xchg ebx, ecx
cwde
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
bts ecx, 164
add si, -5
movsx edx, dl
add ebx, 2
sub cl, -49
btc edx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
