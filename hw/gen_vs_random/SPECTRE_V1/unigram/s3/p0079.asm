.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 79
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
bt ebx, 45
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
add bl, -23 # instrumentation
setnle sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 92
cmovnbe rbx, rdx
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
