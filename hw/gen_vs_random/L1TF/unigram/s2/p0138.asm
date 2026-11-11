.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
mul rdx
setb sil
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
adc rbx, 83
xchg cx, bx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor rax, 20
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
sub bx, ax
btc eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
