.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
mul bl
sbb dl, al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, bl
adc si, cx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
movsx eax, al
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
mul dl
cwd
cmovb cx, di
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
lea rdx, qword ptr [rax + rdx + 28]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
