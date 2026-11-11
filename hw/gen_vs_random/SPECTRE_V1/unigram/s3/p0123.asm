.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
sbb eax, ebx
lea rbx, qword ptr [rdi + rsi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 20
add bl, -61 # instrumentation
seto bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
mul sil
add al, dl
add bl, -64 # instrumentation
cmovnle ecx, edi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 16
sbb al, sil
lea dx, qword ptr [rsi + rdi + 25]
test ax, 19339
cmovl rsi, rsi
bt rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
