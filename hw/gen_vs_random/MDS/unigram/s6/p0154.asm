.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -114
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and di, ax
and dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and al, 87
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
xor dl, 34
cmovnbe rbx, rdx
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
cmovl ebx, edx
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
bt edx, 26
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 71
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 56
cmovnp cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
