.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
not dl
jmp .bb_0.2
.bb_0.2:
xor bl, -88
xor al, 8
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
or ax, -11837
test cx, 401
not sil
jmp .bb_0.3
.bb_0.3:
or rax, 302048971
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
