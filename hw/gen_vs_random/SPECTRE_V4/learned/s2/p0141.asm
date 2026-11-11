.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
or dl, 71
adc al, dil
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
sbb al, 95
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
adc rax, 2071185388
test bl, -29
cmp bl, al
adc dl, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
xor ax, 20236
add al, -4
or sil, -47
xchg ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
