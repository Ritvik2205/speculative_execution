.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
cmovnb ax, di
or rax, 1749358813
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and bl, 95
bt ax, si
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
add cl, -42 # instrumentation
adc dl, cl
xor ax, 24729
or sil, -8
bt eax, 95
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or sil, -8
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
