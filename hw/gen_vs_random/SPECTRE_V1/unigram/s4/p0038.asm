.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
cmovno ecx, ebx
xor rcx, 100
adc dl, 80
add bl, -42 # instrumentation
lea eax, qword ptr [rbx]
add cl, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 59
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 25
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
add dl, 32 # instrumentation
sbb sil, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cx, 54
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
adc si, -95
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
