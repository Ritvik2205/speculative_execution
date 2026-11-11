.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
add dl, sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, 87
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
cmp edx, 44
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
cmp dil, -78
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
