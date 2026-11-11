.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
test edi, 24
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 62
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
add al, 66 # instrumentation
cmovnp edx, esi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 85
setz sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sbb al, sil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
cmovnbe rdx, rcx
add bl, -75 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
