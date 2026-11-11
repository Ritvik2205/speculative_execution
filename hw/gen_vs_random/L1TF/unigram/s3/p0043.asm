.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
add rsi, 57
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
imul rcx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
lea cx, qword ptr [rcx]
xor dil, sil
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
and ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 89
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
