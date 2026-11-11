.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 87
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
test rdi, -1846965753
cmovb edx, eax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, dil
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
cmovnl rax, rdx
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
sets dil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
