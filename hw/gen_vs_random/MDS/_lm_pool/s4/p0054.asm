.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor cl, 83
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and al, sil
test al, cl
and sil, -69
jmp .bb_0.1
.bb_0.1:
test dil, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test al, 127
test al, al
test bl, -114
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
