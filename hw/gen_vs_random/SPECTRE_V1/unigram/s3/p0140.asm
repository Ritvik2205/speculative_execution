.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rbx]
add bl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
movsx ax, sil
sbb al, sil
xor dl, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], esi
seto al
lea rsi, qword ptr [rbx + rax + 65]
or rbx, rsi
xor ax, 913
and sil, cl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
lea si, qword ptr [rdx + rdx + 72]
setnle bl
cmp cl, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
