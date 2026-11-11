.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
bswap rdx
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
cmovnz ax, ax
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
cmovp ecx, eax
setb dil
jmp .bb_0.1
.bb_0.1:
add dl, -123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
bswap rdi
add bl, -79 # instrumentation
cmovo ax, cx
sbb dx, 50
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
neg sil
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 60
or edi, esi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
