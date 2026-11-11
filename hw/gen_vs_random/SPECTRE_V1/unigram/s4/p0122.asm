.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 37
sbb al, -107
adc bl, -73
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno ax, di
add sil, -68
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 83
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
mov bl, cl
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
add bl, -58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
