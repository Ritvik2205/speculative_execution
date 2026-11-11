.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and al, 76
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bt rdx, rsi
sub dil, 95
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
cmp dl, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
movzx ebx, dx
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
xor al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
