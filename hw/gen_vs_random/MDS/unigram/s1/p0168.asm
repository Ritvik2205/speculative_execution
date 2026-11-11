.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
cmovl rax, rcx
and al, -56 # instrumentation
cmovl rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
and dl, -33 # instrumentation
cmovns rsi, rsi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
or rcx, 26
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
test edi, 46
or dx, 25
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and cl, 95 # instrumentation
cmovns rax, rax
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
cmovno edx, esi
test rbx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
