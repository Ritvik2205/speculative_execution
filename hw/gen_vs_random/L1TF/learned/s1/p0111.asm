.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -95 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
bts edx, 61
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or cl, dl
sbb rax, -1841833326
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
