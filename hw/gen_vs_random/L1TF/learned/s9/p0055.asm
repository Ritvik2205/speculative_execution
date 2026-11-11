.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 80
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or esi, 16
xor cl, sil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 35
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
sub cl, 86
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
add al, al
xor al, dil
and al, -68
setle cl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
