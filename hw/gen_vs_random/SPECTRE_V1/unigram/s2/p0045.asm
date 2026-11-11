.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 77
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 32
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
adc sil, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
test dl, 14
add dl, -6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
sub bl, dl
movzx bx, dil
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
add bx, -105
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
