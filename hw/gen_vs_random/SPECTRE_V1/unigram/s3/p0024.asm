.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add cl, 32 # instrumentation
cmovnbe rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
cmovno rbx, rdi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, dil
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 20
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
add ecx, 40
movsx rsi, dx
sub dil, -111
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
add cl, 13 # instrumentation
setns cl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
