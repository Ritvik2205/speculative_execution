.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
cmovnle rcx, rdx
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
add al, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
cmovno bx, dx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bt rbx, 183
add cl, -93 # instrumentation
not rax
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 71
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
test sil, 13
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
