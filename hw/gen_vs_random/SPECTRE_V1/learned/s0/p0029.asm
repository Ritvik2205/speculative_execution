.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
adc ax, di
setno dl
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
xchg edi, eax
bt eax, 127
lea rdx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add al, 110
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
bt edi, 68
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 4
lea si, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
