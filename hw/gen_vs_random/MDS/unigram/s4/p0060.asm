.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe dx, di
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or rcx, 54
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and dl, -40 # instrumentation
cmovle bx, dx
test cl, cl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and bl, bl
not rdi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
cmovo rsi, rax
test dl, -119
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
test edi, -1252846009
cmovns rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
