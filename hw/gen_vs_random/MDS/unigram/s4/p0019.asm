.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rdi, 34
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
cmovnbe dx, di
btc di, 164
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
or sil, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and bl, -28 # instrumentation
cmovl rdi, rdx
or cl, 30
or dil, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
