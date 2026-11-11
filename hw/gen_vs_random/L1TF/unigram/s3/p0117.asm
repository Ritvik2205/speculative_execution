.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, -88
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
sbb cl, al
and esi, 82
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
lea rdx, qword ptr [rdx + rax]
cmovnz rax, rsi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
add cl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdi
inc ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rcx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
