.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
test al, sil
and sil, bl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 4
test al, -7
or bl, dil
xor sil, -14
cmovle si, ax
jmp .bb_0.1
.bb_0.1:
or sil, dl
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
