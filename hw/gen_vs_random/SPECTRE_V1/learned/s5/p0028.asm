.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov cl, al
xchg dl, sil
and dil, dl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
xor ax, 913
inc ecx
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 6
sub dil, -32
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
