.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 87
cmp ax, 2764
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 54
jmp .bb_0.1
.bb_0.1:
add sil, sil
sub esi, 62
imul cl
add al, -3 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
setp dl
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsf cx, si
add al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
or ax, 10
and sil, 110
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
