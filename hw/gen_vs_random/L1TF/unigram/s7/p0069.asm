.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
sbb si, 48
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
setle sil
and bl, bl
add dl, -78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
cwde
jmp .bb_0.1
.bb_0.1:
add dl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
xchg cx, si
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
lea eax, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
add bl, 10 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
