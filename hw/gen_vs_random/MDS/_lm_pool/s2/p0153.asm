.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and al, 84
xor dil, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
bts rbx, rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
xor dl, 40
test eax, 1287331633
and dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
