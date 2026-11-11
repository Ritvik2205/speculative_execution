.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, 80
xor dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
or rdx, 11
xor rcx, 95
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
mov eax, ecx
test dl, -37
and rdi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdi]
add dl, 64 # instrumentation
sbb dl, cl
mov sil, sil
lea edi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
