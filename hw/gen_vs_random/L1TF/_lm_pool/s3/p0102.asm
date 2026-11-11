.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rsi, 69
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax]
xor cl, al
xor bl, -5
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and al, -68
and sil, 37
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
add ax, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
