.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -2019837038
add edi, 70
cmovl rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
cmovnp ecx, edi
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
