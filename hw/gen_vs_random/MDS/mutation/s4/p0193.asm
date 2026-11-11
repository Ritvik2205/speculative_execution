.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
cmovle di, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
cmovnp dx, di
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and al, dl
jmp .bb_0.1
.bb_0.1:
xor dl, 34
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 79
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
