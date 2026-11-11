.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rsi, 49
bt ecx, edi
xchg bl, dl
xor bl, cl
test al, -71
lea bx, qword ptr [rsi + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or rbx, 47
sbb al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
