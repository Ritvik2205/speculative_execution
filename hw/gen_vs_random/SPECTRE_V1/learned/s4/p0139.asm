.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
setp sil
add al, sil
adc bl, 102
xor dl, dl
sub dl, 96
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sub di, 25
btr ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
