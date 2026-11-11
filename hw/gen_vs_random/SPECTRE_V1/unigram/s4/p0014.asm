.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 49
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
add cl, 97 # instrumentation
adc dx, cx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 82
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp rbx, rdx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 1
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 65
or sil, -27
cmp dl, dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
dec rax
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 96
lea rsi, qword ptr [rdi + rbx + 48]
adc dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
