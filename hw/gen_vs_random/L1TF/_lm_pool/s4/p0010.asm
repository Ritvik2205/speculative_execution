.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
not esi
or al, cl
cmp dl, dil
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 41
xor rdx, rbx
add sil, bl
lea ax, qword ptr [rdi + rax + 57]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
