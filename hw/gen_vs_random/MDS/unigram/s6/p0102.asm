.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 37 # instrumentation
cmovnbe cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 62
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
cmovnb rcx, rax
cmovb cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
or ax, ax
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and bl, 121 # instrumentation
bt rax, 40
or cx, 39
and bl, 120 # instrumentation
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
