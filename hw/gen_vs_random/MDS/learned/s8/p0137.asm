.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
xor al, 115
or rbx, -72
jmp .bb_0.1
.bb_0.1:
btr si, bx
test eax, 1838539683
or al, 16
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and ax, 29207
test al, dl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or sil, -49
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 79
test rax, -648054011
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
