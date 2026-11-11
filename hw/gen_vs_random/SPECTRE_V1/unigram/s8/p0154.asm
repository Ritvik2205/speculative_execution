.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
adc ax, bx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
lea rdi, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
add al, -121 # instrumentation
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
