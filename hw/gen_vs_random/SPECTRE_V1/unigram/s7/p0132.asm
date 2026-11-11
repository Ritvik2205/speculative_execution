.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 38 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
adc rsi, 110
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], ax
lea bx, qword ptr [rsi + rdx + 24]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
xor rcx, 74
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
