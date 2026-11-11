.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
or dl, 41
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
jns .bb_0.2
jmp .exit_0
.bb_0.2:
lea rcx, qword ptr [rdi + rax + 65]
sbb dl, bl
xor bl, dil
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
cmovno cx, ax
cmp eax, 692647572
test dl, -105
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
