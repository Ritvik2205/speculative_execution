.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
lea ebx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
test al, -71
neg dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
inc rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 96
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
neg dx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
