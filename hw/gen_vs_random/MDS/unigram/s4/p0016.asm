.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno cx, di
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
cmovnp rdx, rdi
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
not al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
or al, -78
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 23
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
cmovnb cx, dx
and dl, dl
btc bx, 104
not bl
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
