.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 84
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
sbb di, bx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
xchg al, dl
movzx edx, dil
sub sil, -99
movzx bx, dl
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
add al, 39 # instrumentation
cmovnb di, si
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
mul sil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 62
bt rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
