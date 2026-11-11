.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
not al
or sil, -78
or al, 25
test eax, 1838539683
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
not al
test bl, 65
or cl, al
xor cl, -13
xor dx, 20
and rax, -731384280
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
