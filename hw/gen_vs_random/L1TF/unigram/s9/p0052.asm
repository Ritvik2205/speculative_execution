.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
cmovnp bx, ax
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
test rbx, rcx
sbb dl, -26
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
test eax, 899472326
sbb dx, 39
add bl, bl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
