.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, cx
and cx, -2
or dil, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and si, -121
test eax, 1729060510
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
jmp .bb_0.1
.bb_0.1:
bt si, di
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
test bl, cl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
