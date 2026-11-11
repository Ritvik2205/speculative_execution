.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -51 # instrumentation
cmovno rdx, rcx
sub dil, dl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
cmovb bx, di
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
or sil, 122
bt ebx, 45
adc al, -82
sub sil, -18
cmovnb rdx, rcx
seto cl
cmovnle rbx, rdx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
