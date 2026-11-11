.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rbx, rcx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 41
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
setz cl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
sub rax, 1806572419
setno sil
sub bx, dx
or di, dx
btc ebx, ecx
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 6
add rdi, 26
btc rax, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
