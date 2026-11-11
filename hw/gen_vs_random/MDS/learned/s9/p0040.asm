.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -114
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test al, sil
and sil, sil
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or al, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and ecx, -104
not bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 20
and dl, -73
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
test dl, 9
or sil, dil
and rdx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
