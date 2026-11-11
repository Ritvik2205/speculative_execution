.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sbb cl, dl
setno al
lea rax, qword ptr [rdx + rcx + 24]
cmp rax, -1365488374
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
lea ax, qword ptr [rdx + rdi + 83]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
cmovnbe rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
