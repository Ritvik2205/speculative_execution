.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 75
btc eax, 40
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 59
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and cl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test al, 91
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or sil, al
test sil, bl
xor dil, -70
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
