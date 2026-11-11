.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
cmovl rcx, rdi
and ebx, 24
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or edx, esi
and rbx, 37
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or sil, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 92
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and al, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
bt esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
test bl, cl
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
