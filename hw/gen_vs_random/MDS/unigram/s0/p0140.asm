.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, 15
xor cl, cl
cmovno ecx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdi, rdi
xor al, 9
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovz dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
test al, 66
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
