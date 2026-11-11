.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
cmp dil, sil
add bx, -105
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
or dl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
bts rbx, rax
mul cl
sub esi, -120
mov al, cl
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], -58
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
