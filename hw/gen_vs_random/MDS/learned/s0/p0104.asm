.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle eax, eax
or dl, cl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and cx, -2
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
xor dl, sil
xor al, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test esi, 425331143
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
