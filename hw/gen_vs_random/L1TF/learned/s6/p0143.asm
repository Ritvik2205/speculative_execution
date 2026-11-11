.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
lea dx, qword ptr [rdi]
test sil, 29
sub ax, 7297
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
add dl, dil
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
