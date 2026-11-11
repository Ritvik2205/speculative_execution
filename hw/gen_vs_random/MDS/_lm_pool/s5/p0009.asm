.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 98
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 59
btc si, ax
xor al, -26
and al, -55
test bl, -114
or bl, bl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.1
.bb_0.1:
bt edi, 225
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
