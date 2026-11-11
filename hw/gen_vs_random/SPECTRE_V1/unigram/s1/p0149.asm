.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
add bl, 36 # instrumentation
setnl dl
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
sets cl
cmovnb si, di
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdi]
test sil, 87
add bl, sil
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
setnp dil
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 46
setnbe bl
or dil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
