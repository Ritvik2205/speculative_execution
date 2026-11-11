.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -99
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
add dil, -75
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, -82
setno sil
sub al, sil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
