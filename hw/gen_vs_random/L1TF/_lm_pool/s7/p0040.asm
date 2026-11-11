.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
sub al, 26
test cl, 58
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
xchg eax, esi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
