.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
xor dx, 94
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or rbx, -72
not dil
not al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and al, -8
and rax, 498847670
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
