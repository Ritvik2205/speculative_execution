.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rsi, 67
and rax, 1994547909
add dl, 100 # instrumentation
lea ax, qword ptr [rdx]
lea esi, qword ptr [rdx]
or dil, -113
mov dl, sil
lea edi, qword ptr [rdx + rdi + 97]
dec dx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
cmovno dx, si
test eax, 645518295
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
xor ax, 32760
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
