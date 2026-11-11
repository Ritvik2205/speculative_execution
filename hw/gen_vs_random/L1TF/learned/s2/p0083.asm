.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
test dil, bl
or eax, -62
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
adc al, -6
jmp .bb_0.1
.bb_0.1:
or sil, al
jmp .bb_0.2
.bb_0.2:
test al, -104
cmp al, 27
test esi, 31
or dil, -113
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
jmp .bb_0.3
.bb_0.3:
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
