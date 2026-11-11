.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 74
and al, al
xor dl, 19
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
mov dl, 121
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
sub al, sil
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
or si, 8
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
mov cl, 40
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
bt dx, di
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
