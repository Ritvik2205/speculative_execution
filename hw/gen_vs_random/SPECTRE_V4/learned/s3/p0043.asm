.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and bl, dl
sub bl, dl
cmp dil, bl
xor al, bl
test al, -26
dec al
or dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and dl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
