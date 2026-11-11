.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
btr ax, si
test sil, al
xor dil, -70
and si, -121
or ax, 16560
and al, 106
test sil, -55
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor bl, dil
and ebx, 45
test cl, bl
xor al, 9
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
