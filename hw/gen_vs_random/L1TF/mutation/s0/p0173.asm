.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and al, -99
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
add dx, -51
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
xor al, -127
movzx ebx, dx
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
bt rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
sub dil, 95
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
