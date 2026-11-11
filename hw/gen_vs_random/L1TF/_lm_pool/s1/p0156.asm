.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
setno al
lea rbx, qword ptr [rsi + rax + 72]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and dil, cl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and dl, sil
lea dx, qword ptr [rcx + rbx + 82]
lea rbx, qword ptr [rdi + rdx]
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
