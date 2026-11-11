.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or al, 37
or bl, -125
or bl, 13
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cl, dl
test eax, 343548072
or al, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
