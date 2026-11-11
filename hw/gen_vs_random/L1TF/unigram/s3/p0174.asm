.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
sub al, -75
xor dl, al
setbe sil
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
xchg bx, bx
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
