.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
cmovb edx, edx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
cmovnbe bx, di
lea eax, qword ptr [rbx]
test bl, dil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
add edi, 47
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 88
add bl, 7 # instrumentation
cmovnl edx, ebx
add dl, 47
lea si, qword ptr [rcx + rdx]
lea rcx, qword ptr [rdx + rdx + 82]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
