.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
test rcx, rax
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
sets bl
adc al, dil
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], eax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 42
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
cmovno di, di
cmovbe ebx, edx
lea rcx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
adc rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
