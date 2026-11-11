.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dl
lea di, qword ptr [rax + rbx]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
bt rbx, 83
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
neg sil
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
add bl, 77 # instrumentation
sbb ebx, -34
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rax, rcx
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
btr ecx, 19
lea rax, qword ptr [rcx + rsi + 51]
and eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
