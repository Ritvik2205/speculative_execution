.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
sub sil, al
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
lea di, qword ptr [rdx]
test sil, -31
lea bx, qword ptr [rdx + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and sil, dl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
