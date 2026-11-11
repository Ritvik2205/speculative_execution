.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
cmovl rax, rdx
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
cmovns edi, ecx
cmovl edi, edx
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
setno sil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and sil, sil
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
cmovbe ecx, eax
lea si, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
cmovns rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
