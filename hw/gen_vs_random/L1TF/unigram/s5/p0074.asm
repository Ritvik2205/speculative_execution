.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
lea rdi, qword ptr [rdi + rbx + 61]
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
add ecx, 59
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 94
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
dec di
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
or dil, dl
cwde
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
