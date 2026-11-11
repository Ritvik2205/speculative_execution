.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
sbb bl, bl
btr ax, di
btr rdi, rdx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sets al
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sbb ax, -17107
add bl, 110 # instrumentation
cmovb rdx, rbx
xor bl, -38
setbe dl
cmovnl esi, eax
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 39
add cl, 46 # instrumentation
sbb rcx, 48
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
