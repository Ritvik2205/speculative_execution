.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
add al, dl
or al, -2
xchg sil, bl
add sil, cl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 14
cmp dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
