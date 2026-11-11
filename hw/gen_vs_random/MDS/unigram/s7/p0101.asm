.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not sil
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
test dl, -85
or cl, cl
or dil, cl
not bl
test dl, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and bl, 27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx]
or dil, -78
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
test ecx, eax
or al, dil
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
btr ebx, 0
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
