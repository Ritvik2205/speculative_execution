.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdx, rdi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 84
or sil, al
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and al, -15 # instrumentation
cmovnp ax, ax
and rcx, rbx
and rsi, rsi
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test sil, cl
test dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
test dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
