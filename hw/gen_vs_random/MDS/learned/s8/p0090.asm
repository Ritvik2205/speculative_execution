.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or cl, bl
or bl, -125
test bl, dl
xor dl, -59
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 77
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and dx, 60
bt ax, si
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
xor sil, al
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
