.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
or rcx, 54
or cl, al
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
btr rdx, 46
xor cl, 15
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
test bx, 4954
test esi, 425331143
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 30
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
or cl, 119
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
