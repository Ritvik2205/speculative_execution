.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -2116875023
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
test ax, 5320
cmovo dx, ax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and al, 126
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 85
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
cmovs dx, di
add dl, 31 # instrumentation
cmovnl cx, cx
test eax, 758789512
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 20
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
adc bx, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
