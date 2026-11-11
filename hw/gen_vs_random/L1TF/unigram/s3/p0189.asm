.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
and edx, ecx
add bl, -93
xchg rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 59
add dil, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 41
and rdx, 18
movzx edi, cx
add dl, dl
and dl, -98
btc ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], eax
lea rdi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
