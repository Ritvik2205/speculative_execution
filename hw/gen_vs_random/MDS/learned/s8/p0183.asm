.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
xor di, 40
or sil, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test ecx, -1843375753
xor al, -4
cmp cx, 59
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 93
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor rcx, -2
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
