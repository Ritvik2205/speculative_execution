.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
lea si, qword ptr [rdi + rax]
add bx, -105
cmp dil, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
bts rbx, rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], -58
mul cl
sub esi, -120
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
jmp .bb_0.2
.bb_0.2:
add al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and dx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
