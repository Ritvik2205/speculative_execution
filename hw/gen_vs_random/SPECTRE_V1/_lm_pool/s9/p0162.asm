.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 75
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
test dil, -116
jmp .bb_0.2
.bb_0.2:
test al, -75
add sil, -68
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
movsx rbx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
