.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
cmovb edx, ecx
and al, 54 # instrumentation
cmovnp dx, dx
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
test bl, cl
or dl, -97
cmovp rbx, rsi
test al, al
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and eax, eax
xor sil, -46
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
