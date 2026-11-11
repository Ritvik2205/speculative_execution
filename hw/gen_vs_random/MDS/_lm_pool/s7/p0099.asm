.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 83
not al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
test al, 22
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
btr ecx, eax
and al, 84
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
test dil, -51
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
test al, cl
btr ecx, edx
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and cl, -71
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
test cl, cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
