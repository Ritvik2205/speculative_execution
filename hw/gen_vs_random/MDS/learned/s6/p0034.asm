.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
xor al, 9
test bl, -14
and rcx, -63
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and al, sil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 69
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
xor sil, bl
and eax, -829294476
and eax, -829294476
xor dl, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
