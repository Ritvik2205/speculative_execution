.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb eax, ecx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sub bl, -6
xchg rbx, rdx
or dx, 85
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, dil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and al, 33
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test sil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
