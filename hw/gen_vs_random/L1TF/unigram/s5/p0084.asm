.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
and al, -68
lea edi, qword ptr [rcx + rcx + 75]
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovs esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
add dl, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 28
mov rdi, 89
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
xor rdx, rcx
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
