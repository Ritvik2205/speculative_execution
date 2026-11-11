.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 62
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add al, 56
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
xchg esi, edi
test eax, -2032743474
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sub al, dil
sbb dl, al
sub dl, cl
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
