.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rax + rbx + 6]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
test bx, 49
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
test cl, -31
lea cx, qword ptr [rsi + rdi + 49]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or di, 11
lea eax, qword ptr [rbx]
add cl, -29 # instrumentation
lea rax, qword ptr [rbx + rbx + 78]
lea cx, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], esi
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
