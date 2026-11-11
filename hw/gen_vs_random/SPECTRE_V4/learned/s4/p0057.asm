.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 18
cmp rbx, -3
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 81
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub dil, cl
sub bl, dl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
bts dx, 96
sub al, 69
adc di, -78
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 54
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
