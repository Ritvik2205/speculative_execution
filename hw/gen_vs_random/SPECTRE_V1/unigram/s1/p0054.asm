.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 96
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
cmp al, 62
sbb cl, al
lea rdx, qword ptr [rdi + rsi + 73]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
add dx, -103
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 61
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
cmovnbe cx, bx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 68
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
