.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
xor dl, sil
test bl, 84
sub sil, -99
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
btc ax, di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and dl, 59
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test rbx, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
