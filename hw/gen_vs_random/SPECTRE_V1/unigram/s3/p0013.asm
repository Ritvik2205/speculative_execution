.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
add al, 36 # instrumentation
cmovnp rbx, rax
xchg al, bl
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
sbb eax, 100
jno .bb_0.1
jmp .exit_0
.bb_0.1:
movsx ecx, cx
cmovnz di, ax
add al, 19 # instrumentation
setnz al
xor dl, al
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
adc bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
