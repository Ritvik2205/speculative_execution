.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or cl, al
cmp rbx, 18
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
or dl, dil
xor sil, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovnb rax, rdx
xor eax, 1170472196
jmp .bb_0.2
.bb_0.2:
cmovnp cx, ax
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 18
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
bt esi, 74
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
cmovz rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
