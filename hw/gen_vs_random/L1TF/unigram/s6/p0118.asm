.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -41 # instrumentation
adc si, ax
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
lea dx, qword ptr [rbx]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
add cl, 44 # instrumentation
cmovns bx, dx
cmovns ecx, esi
dec eax
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 17
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
adc edx, 59
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
