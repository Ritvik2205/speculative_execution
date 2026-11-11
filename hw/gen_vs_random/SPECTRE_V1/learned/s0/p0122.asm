.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rsi]
mov dil, bl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
lea ax, qword ptr [rdx]
dec al
test al, -71
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 37
sub di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
