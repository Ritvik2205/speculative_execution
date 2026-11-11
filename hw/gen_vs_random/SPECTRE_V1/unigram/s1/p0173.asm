.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
cmovnbe rbx, rsi
cmp rdx, -19
lea si, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test dx, 49
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
cmovnle dx, cx
or rdi, 68
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 13
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
test al, 59
lea cx, qword ptr [rdx + rdx + 41]
bt ebx, edi
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
