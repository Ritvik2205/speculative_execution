.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and cl, 79
xor al, 9
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and dil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and al, bl
or sil, cl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor dil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
test rdi, 46
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
