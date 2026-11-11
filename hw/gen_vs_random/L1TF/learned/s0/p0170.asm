.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
lea ax, qword ptr [rsi + rcx + 62]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
or edi, 99
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
lea ax, qword ptr [rdi + rdx + 24773]
add cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
