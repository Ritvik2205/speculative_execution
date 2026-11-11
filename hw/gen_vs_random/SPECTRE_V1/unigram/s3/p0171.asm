.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 40
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
setnb cl
and ecx, ecx
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rax + rbx]
xor rdi, 18
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, -124
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
lea ax, qword ptr [rcx]
movsx ecx, cx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
add sil, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
