.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
test dil, -107
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 43
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 18
cmovno esi, esi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
cmovnbe si, dx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rsi]
lea rbx, qword ptr [rdi]
cmovno rbx, rsi
and si, di
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
lea dx, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
