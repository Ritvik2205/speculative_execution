.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and al, 17 # instrumentation
cmovnp esi, ecx
or ax, -11837
and al, bl
and bl, -87 # instrumentation
cmovo bx, di
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and al, 87
not rcx
cmovnbe edx, eax
and cl, 18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test sil, 17
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
test dil, 46
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
or dil, -78
and rdx, 93
bt di, 52
cmovl esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
