.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
sbb al, 92
not cl
and sil, -90
xchg rdi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
adc sil, 52
cmovs ax, cx
cmp bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
