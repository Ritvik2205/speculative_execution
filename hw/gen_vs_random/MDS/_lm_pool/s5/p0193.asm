.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
test al, 127
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or sil, dil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
test al, bl
xor al, -19
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
test al, cl
bt cx, bx
or al, 54
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test dl, dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 36
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
