.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 16
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
test bl, -8
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
xor ecx, 61
sub bl, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, dl
inc eax
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
