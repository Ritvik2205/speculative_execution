.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edx, ecx, 50
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
test bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
sub al, -66
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
add dil, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 82
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
or sil, 122
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
