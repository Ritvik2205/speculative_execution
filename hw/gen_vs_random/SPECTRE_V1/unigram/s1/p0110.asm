.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
mov dil, 9
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
or bl, al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 5
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, -55
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
test ax, si
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
cmovnz rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
