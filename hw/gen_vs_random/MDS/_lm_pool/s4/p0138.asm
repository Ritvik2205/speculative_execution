.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or bl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
test bl, al
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
xor dl, -59
xor al, bl
or rax, 1020005579
xor rax, -843636050
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and al, cl
xor rax, 459999114
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
