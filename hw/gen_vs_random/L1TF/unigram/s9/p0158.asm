.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rdi, rcx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
setb sil
sub ecx, ebx
or dx, 55
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
bt di, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
add cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
btr edx, edi
or dl, dl
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
