.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx], 21
inc dil
test al, 34
adc ax, 24404
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
xchg rax, rdx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rcx + rcx + 8848]
lea eax, qword ptr [rax + rcx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
cmp sil, 25
test ax, -13885
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
mul al
xor dl, dl
inc edi
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
