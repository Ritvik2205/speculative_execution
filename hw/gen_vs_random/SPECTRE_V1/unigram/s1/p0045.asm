.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, rdi
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
setnb cl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
sub al, -82
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
cmovnp dx, dx
add bl, -95
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rbx, 61
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
not si
lea eax, qword ptr [rcx + rcx + 71]
xor sil, sil
btr esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
