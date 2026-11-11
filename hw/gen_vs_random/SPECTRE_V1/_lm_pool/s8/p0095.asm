.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb eax, ecx
cmp sil, al
sub bl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
xor bl, dl
sbb dil, -93
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 77
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
