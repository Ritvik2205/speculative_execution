.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, 61
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 95
lea rbx, qword ptr [rbx + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 38
add cl, -93 # instrumentation
not rdx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
add dl, -127 # instrumentation
setp bl
add sil, -68
xchg al, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
bts ecx, 63
mov di, 44
mov cl, -72
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
