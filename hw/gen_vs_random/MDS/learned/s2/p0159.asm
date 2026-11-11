.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and dl, bl
or al, dil
xor sil, bl
and al, bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or bl, al
bt cx, dx
xor rax, -404206377
test rax, 337705873
xor ax, -6793
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor sil, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
