.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -59
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
xor rcx, 71
or ax, -20176
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and al, 49
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xor al, -89
and al, bl
test sil, al
xor sil, bl
and bl, 68
xor sil, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test rdi, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
