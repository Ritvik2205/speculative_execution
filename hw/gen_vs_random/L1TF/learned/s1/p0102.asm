.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120
not sil
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
adc esi, 11
add dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
setnz dil
lea esi, qword ptr [rdx]
lea edx, qword ptr [rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
movsx rdx, bl
and bx, 11
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
