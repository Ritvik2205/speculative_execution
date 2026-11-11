.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
add al, -21 # instrumentation
mov eax, ebx
cmovp edx, ebx
add dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 16
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
not si
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
movzx rdx, dil
and bl, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
adc sil, 51
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
