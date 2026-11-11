.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 76
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
xor cl, -13
and cl, -111
or dil, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and cx, -2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and dil, -62
xor cl, sil
and cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
