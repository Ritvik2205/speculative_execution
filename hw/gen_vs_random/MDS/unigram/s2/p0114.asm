.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
test rcx, rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 63
and al, 67 # instrumentation
cmovl rax, rbx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], dx
bt dx, 228
bt dx, cx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 54
btr ax, 193
and dil, 125
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
or rax, 1461812833
and bl, sil
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
