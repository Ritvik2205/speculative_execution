.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
adc sil, -77
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
xor cl, cl
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
sub dil, -32
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
