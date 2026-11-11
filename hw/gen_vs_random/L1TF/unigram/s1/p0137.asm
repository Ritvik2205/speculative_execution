.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or rdx, rax
and di, 44
imul rsi, rdx
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
setz al
cmovnle dx, dx
or sil, -44
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
movsx rdi, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
