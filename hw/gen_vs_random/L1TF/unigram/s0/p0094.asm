.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
sub bl, sil
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
lea eax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 59
mov edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 48
or dx, -126
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
