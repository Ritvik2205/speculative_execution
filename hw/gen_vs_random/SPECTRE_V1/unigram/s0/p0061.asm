.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
setle cl
sub cl, 76
btr cx, 29
add edx, edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rax, rax
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 73
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
xchg rdi, rax
mov bl, bl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
btr si, 86
add eax, -1265007362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
